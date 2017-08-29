#include <cstdio>
#include <unistd.h>
#include <iostream>

#include <opencv2/opencv.hpp>
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace cv;
using namespace std;

int DELAY_BLUR = 100;
int MAX_KERNEL_LENGTH = 31;

Mat original, handled, mask;
double width, height;

char window_name[] = "Filtro tiltshift";

float[] * tiltmask;


//////////////////////////////////

int bluring = 7;
int height;

int MAX = 100;

double transition = 6;
int transition_slider = 0;

int position_slider = 0;
int vertical_position = 0;

int aperture_slider = 0;
int aperture_size = 20;

Mat image1, image2, alpha, beta;

//////////////////////////////////

void on_trackbar_transition(int, void*){

	transition = (transition_slider > 1 ? (double) transition_slider : 1;
	update_tiltmask();
}

void on_trackbar_position(int, void *){

	vertical_position = (position_slider/MAX) * (height);
	update_tiltmask();
}

void on_trackbar_aperture(int, void*) {

	aperture_size = (aperture_slider/MAX) * (height);
	aperture_size = (aperture_size < 1 ? 1 : aperture_size > height ? height : aperture_size);
	update_tiltmask();
}


void apply_tiltmask() {

		Mat outputImagemBorrada, outputImagemOriginal;
		image1.convertTo(outputImagemOriginal, CV_32FC3);
		image2.convertTo(outputImagemBorrada, CV_32FC3);
		multiply(outputImagemOriginal, alpha, outputImagemOriginal);
		multiply(outputImagemBorrada, beta, outputImagemBorrada);
		Mat imageTiltShift;
		add(outputImagemOriginal, outputImagemBorrada, imageTiltShift);
		imageTiltShift.convertTo(imageTiltShift, CV_8UC3);
		imshow("tiltshift", imageTiltShift);
}

void update_tiltmask() {

	int l1 = - aperture_size/2;
		int l2 = -l1;
		tiltmask = Mat::zeros(1, original.cols, CV_32F);
		// beta = Mat::zeros(image1.rows, image1.cols, CV_32F);
		// int i, j;
		int x;
		for (int i = 0; i < alpha.cols; i++) {
				x = i - (vertical_position + aperture_size/2);
		alpha.at<float>(0, i) = (0.5f * (tanh((x - l1)/transition) - tanh((x - l2)/transition)));
		}
		// Mat auxA[] = {alpha, alpha, alpha};
		// Mat auxB[] = {beta, beta, beta};
		// merge(auxA, 3, alpha);
		// merge(auxB, 3, beta);
		apply_tiltmask();
}

int display( int delay ) {
	imshow( window_name, handled );
	return waitKey ( delay );
}

int main(int argvc, char** argv){

	// namedWindow("tiltshift",1);

	// mask = Mat(width, height, CV_32F);
	
	// while (key != ESC_KEY) {
			
	// 	if (step < 4) {
	// 		step++;

	// 	} else {

	// 		step = 0;					

	// 		video >> original;

	// 		// Manipulacoes do frame capturado
	// 		flip(original, original, 1);
	// 		imshow("original", original);

	// 		for (int kernel = 1; kernel < MAX_KERNEL_LENGTH; kernel = kernel + 2 ) { 
	// 			// medianBlur ( original, handled, 5 );
	// 			// bilateralFilter ( original, handled, kernel, kernel*2, kernel/2 );
	// 			GaussianBlur( original, handled, Size( kernel, kernel ), 0, 0 );
	// 		}

	// 		key = display( DELAY_BLUR );
		

				original = imread("images/NYC.jpg");
				height = original.size().height;
				image2 = original.clone();
				Mat aux, mask, mask1;
				float media[] = {1,1,1,
								 1,1,1,
								 1,1,1};

				mask = Mat(3, 3, CV_32F, media) * (1/9.0);
				// mask *= ;
				// scaleAdd(mask, 1/9.0, Mat::zeros(3,3,CV_32F), mask1);
				// mask = mask1;
				image2.convertTo(aux, CV_32F);
				for (int i = 0; i < bluring; i++) {
						filter2D(aux, aux, aux.depth(), mask, Point(1, 1), 0);
				}
				aux = abs(aux);


				aux.convertTo(image2, CV_8UC3);

				namedWindow("tiltshift", 1);

				sprintf(trackbar, "Posição");
				createTrackbar( trackbar, "tiltshift",
								&position_slider,
								MAX,
								on_trackbar_position );

				sprintf(trackbar, "Abertura");
				createTrackbar( trackbar, "tiltshift",
								&aperture_slider,
								MAX,
								on_trackbar_aperture);

				sprintf(trackbar, "Transição");
				createTrackbar( trackbar, "tiltshift",
								&transition_slider,
								MAX,
								on_trackbar_transition);

				calcWeighing();
		}
	}

	return 0;
}