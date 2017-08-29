#include <iostream>
#include <highgui.h>
#include <cv.h>

using namespace std;
using namespace cv;

int main(int argc, char** argv) {

	Mat image;
	Vec3b val;
	int x1, x2, y1, y2, m;

	image= imread(argv[1], CV_LOAD_IMAGE_GRAYSCALE);

	if(!image.data) {
		cout << "Falha ao abrir " << argv[1] << "..." << endl;
		waitKey();
	}

	cout<<"Informe as coordenadas de P1 (x,y): ";
	cin>>x1>>y1;

	cout<<"Informe as coordenadas de P2 (x,y): ";
	cin>>x2>>y2;

	if(x1 > x2) {
		m = x2;
		x2 = x1;
		x1 = m;
	}

	if(y1 > y2) {
		m = y2;
		y2 = y1;
		y1 = m;
	}

	for(int i=x1; i < x2; i++){
		for(int j=y1; j < y2; j++){
			image.at<uchar>(i,j)=255- image.at<uchar>(i,j);
		}
	}

	namedWindow("window", WINDOW_AUTOSIZE);

	imshow("window", image);

	imwrite("inverted.png", image);

	waitKey();

	return 0;
}