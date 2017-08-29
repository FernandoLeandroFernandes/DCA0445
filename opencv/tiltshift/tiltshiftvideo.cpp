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

int deepMedia = 7;
int height;

int MAX = 100;
double decaimento = 6;
int decaimento_slider = 0;

int top_slider = 0;
int posicao_vertical = 0;

int tamanho_faixa = 20;
int altura_slider = 0;


Mat image1, image2, alpha, beta;

//////////////////////////////////

void on_trackbar_decaimento(int, void*){
		decaimento = (double) decaimento_slider;
		if (decaimento < 1) {
				decaimento = 1;
		}
		calcWeighing();
}

void on_trackbar_posicaoVertical(int, void *){
		posicao_vertical = top_slider*height/MAX;
		calcWeighing();
}

void on_trackbar_altura_regiao(int, void*) {
		tamanho_faixa = altura_slider*height/MAX;
		if (tamanho_faixa == 0) {
				tamanho_faixa = 1;
		}

		if (tamanho_faixa > height) {
				tamanho_faixa = height;
		}
		calcWeighing();
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

	int l1 = - tamanho_faixa/2;
		int l2 = -l1;
		tiltmask = Mat::zeros(1, original.cols, CV_32F);
		// beta = Mat::zeros(image1.rows, image1.cols, CV_32F);
		// int i, j;
		int x;
		for (int i = 0; i < alpha.cols; i++) {
				x = i - (posicao_vertical + tamanho_faixa/2);
		alpha.at<float>(0, i) = (0.5f * (tanh((x - l1)/decaimento) - tanh((x - l2)/decaimento)));
		}
		// Mat auxA[] = {alpha, alpha, alpha};
		// Mat auxB[] = {beta, beta, beta};
		// merge(auxA, 3, alpha);
		// merge(auxB, 3, beta);
		updateScene();
}

int display( int delay ) {
	imshow( window_name, handled );
	return waitKey ( delay );
}

int main(int argvc, char** argv){
	
	char const ESC_KEY = 27;

	int key, step;

	VideoCapture video;

	video.open(0);

	if (!video.isOpened()) {
		return -1;
	}
	
	width	= video.get(CV_CAP_PROP_FRAME_WIDTH);
	height = video.get(CV_CAP_PROP_FRAME_HEIGHT);
	cout << "largura=" << width << "\n";;
	cout << "altura =" << height<< "\n";;

	namedWindow("filtroespacial",1);

	mask = Mat(width, height, CV_32F);
	
	while (key != ESC_KEY) {
			
		if (step < 4) {
			step++;

		} else {

			step = 0;					

			video >> original;

			// Manipulacoes do frame capturado
			flip(original, original, 1);
			imshow("original", original);

			for (int kernel = 1; kernel < MAX_KERNEL_LENGTH; kernel = kernel + 2 ) { 
				// medianBlur ( original, handled, 5 );
				// bilateralFilter ( original, handled, kernel, kernel*2, kernel/2 );
				GaussianBlur( original, handled, Size( kernel, kernel ), 0, 0 );
			}

			key = display( DELAY_BLUR );
		

				height = image1.size().height;
				image2 = image1.clone();
				Mat aux, mask, mask1;
				float media[] = {1,1,1,
												 1,1,1,
												 1,1,1};

				mask = Mat(3, 3, CV_32F, media);
				scaleAdd(mask, 1/9.0, Mat::zeros(3,3,CV_32F), mask1);
				mask = mask1;
				image2.convertTo(aux, CV_32F);
				for (int i = 0; i < deepMedia; i++) {
						filter2D(aux, aux, aux.depth(), mask, Point(1, 1), 0);
				}
				aux=abs(aux);


				aux.convertTo(image2, CV_8UC3);

				namedWindow("tiltshift", 1);

				sprintf( TrackbarName, "Altura da regiÃ£o");
				createTrackbar( TrackbarName, "tiltshift",
												&altura_slider,
												MAX,
												on_trackbar_altura_regiao);

				sprintf( TrackbarName, "Decaimento");
				createTrackbar( TrackbarName, "tiltshift",
												&decaimento_slider,
												MAX,
												on_trackbar_decaimento);

				sprintf( TrackbarName, "PosiÃ§Ã£o Vertical");
				createTrackbar( TrackbarName, "tiltshift",
												&top_slider,
												MAX,
												on_trackbar_posicaoVertical );
				calcWeighing();
		}
	}
	return 0;
}