#include <iostream>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv) {

	int ORIGINAL_BGROUND = 0;
	int EXPLORED_BGROUND = 150;

	int ORIGINAL_BUBBLE = 255;
	int EXPLORED_BUBBLE = 152;

	Mat image, mask;
	CvPoint point;

	int width, height;
	int bubbles=0, holes=0;

	image = imread(argv[1], CV_LOAD_IMAGE_GRAYSCALE);

	if(!image.data){
		cout << "Falha ao carregar a imagem " << argv[1] << "." << endl;
		return(-1);
	}

	width = image.size().width;
	height = image.size().height;

	// boder cleaning ----------------------------------------
	int k = 0;
	while (k < height) {

		point.y = k;

		point.x = 0;
		if (image.at<uchar>(point) == ORIGINAL_BUBBLE) {
			floodFill(image, point, ORIGINAL_BGROUND);
		}

		point.x = width-1;
		if (image.at<uchar>(point) == ORIGINAL_BUBBLE) {
			floodFill(image, point, ORIGINAL_BGROUND);
		}

		k++;
	}


	k = 1;
	while (k < width-1) {

		point.x = k;

		point.y = 0;
		if (image.at<uchar>(point) == ORIGINAL_BUBBLE) {
			floodFill(image, point, ORIGINAL_BGROUND);
		}

		point.y = height-1;
		if (image.at<uchar>(point) == ORIGINAL_BUBBLE) {
			floodFill(image, point, ORIGINAL_BGROUND);
		}

		k++;
	}


	// counting bubbles ----------------------------------------

	for(int i = 0; i < height; i++){
		for(int j = 0; j < width; j++){

			if (image.at<uchar>(i,j) == ORIGINAL_BUBBLE){
				bubbles++;
				point.x = j;
				point.y = i;
				floodFill(image, point, bubbles % 100);
			}
		}
	}

	// coloring the background ---------------------------------

	point.x=0;
	point.y=0;
	floodFill(image, point, EXPLORED_BGROUND);

	// counting the holes --------------------------------------

	int previouspix;

	for(int i = 0; i < height; i++){
		for(int j = 0; j < width; j++){

			if (image.at<uchar>(i,j) == ORIGINAL_BGROUND) {

				previouspix = image.at<uchar>(i,j-1);

				if (previouspix < 100) {
					holes++;
					point.x = j-1;
					point.y = i;
					floodFill(image, point, 255-previouspix);
				}

				point.x = j;
				point.y = i;
				floodFill(image, point, EXPLORED_BGROUND);
			}
		}
	}

	cout << "Bolhas solidas: "<< (bubbles - holes) <<"\n";
	cout << "Bolhas vazadas: "<< holes <<"\n";
	
	imshow("image", image);
	
	imwrite("bubblefill.png", image);
	
	waitKey();
	
	return 0;
}