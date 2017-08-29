#include <cstdio>
#include <iostream>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

void printmask(Mat &m){
	
	cout << "\nMascara atual\n";
	
	for(int i=0; i<m.size().height; i++){
		cout << "|\t";
		for(int j=0; j<m.size().width; j++){
			printf("%.2f\t", m.at<float>(i,j));
		}
		cout << "|\n";
	}

	cout << endl;
}

void print_menu(){

	cout << 
	    "\nPressione a tecla correspondente ao filtro desejado: \n"
		"c/C - Ativar/desativar modo modular\n"
		"m/M - Filtro mediano\n"
		"g/G - Filtro gaussano\n"
		"v/V - Filtro vertical\n"
		"h/H - Filtro horizontal\n"
		"l/L - Filtro laplaciano\n"
		"q/Q - Filtro laplaciano do gaussiano\n"
		"[ESC] - Sair\n\n";
}

int main(int argvc, char** argv){
	
	char const ESC_KEY = 27;

	VideoCapture video;

	video.open(0);

	if (!video.isOpened()) {
		return -1;
	}
	
	float average[] =	{
						1, 1, 1,
						1, 1, 1,
						1, 1, 1
						};
	Mat average_mask = Mat(3, 3, CV_32F, average);
	average_mask = average_mask * (1/9.0);

	float gauss[] = {
					1, 2, 1,
					2, 4, 2,
					1, 2, 1
					};
	Mat gauss_mask = Mat(3, 3, CV_32F, gauss);
	gauss_mask = gauss_mask * (1/16.0);

	float horizontal[] = {
						 -1, 0, 1,
						 -2, 0, 2,
						 -1, 0, 1
						 };
	Mat horizontal_mask = Mat(3, 3, CV_32F, horizontal);

	float vertical[] =	{
						-1,-2,-1,
						 0, 0, 0,
						 1, 2, 1
						};
	Mat vertical_mask = Mat(3, 3, CV_32F, vertical);

	float laplacian[]=	{
						 0,-1, 0,
						-1, 4,-1,
						 0,-1, 0,
						};
	Mat laplacian_mask = Mat(3, 3, CV_32F, laplacian);


	Mat mask = average_mask;

	Mat capture, frame, frame32f, frameFiltered, result;
	int absolut_mode = true;
	int additional_laplacian_step = false;
	int key;

	double width, height;
	width  = video.get(CV_CAP_PROP_FRAME_WIDTH);
	height = video.get(CV_CAP_PROP_FRAME_HEIGHT);
	cout << "largura=" << width << "\n";;
	cout << "altura =" << height<< "\n";;

	namedWindow("filtroespacial",1);

	print_menu();

	while (key != ESC_KEY) {
			
		video >> capture;

		// Manipulacoes do frame capturado
		cvtColor(capture, frame, CV_BGR2GRAY);
		flip(frame, frame, 1);
		imshow("original", frame);

		frame.convertTo(frame32f, CV_32F);

		// Aplica o filtro espacial selecionado (mask)		
		filter2D(frame32f, frameFiltered, frame32f.depth(), mask, Point(1,1), 0);
		
		if (additional_laplacian_step) {
			filter2D( frameFiltered, frameFiltered, frame32f.depth(), laplacian_mask, Point(1,1), 0);
		}

		if (absolut_mode) {
			frameFiltered = abs(frameFiltered);
		}

		frameFiltered.convertTo(result, CV_8U);
		
		imshow("filtroespacial", result);
		
		key = waitKey(10);

		if (key == 'c' || key == 'C' ||
			key == 'm' || key == 'M' ||
			key == 'g' || key == 'G' || 
			key == 'q' || key == 'Q' ||
			key == 'h' || key == 'H' ||
			key == 'v' || key == 'V' ||
			key == 'l' || key == 'L') {

			print_menu();

			if (key == 'c' || key == 'C') {
				absolut_mode = !absolut_mode;
				cout << "Modo absoluto " << (absolut_mode ? "ativado" : "desativado") << endl;

			} else if (key == 'm' || key == 'M') {
				mask = average_mask;
				additional_laplacian_step = false;
				cout << "Filtro da media ativado." << endl;

			} else if (key == 'g' || key == 'G') {
				mask = gauss_mask;
				additional_laplacian_step = false;
				cout << "Filtro gaussiano ativado." << endl;

			} else if (key == 'h' || key == 'H') {
				mask = horizontal_mask;
				additional_laplacian_step = false;
				cout << "Filtro da horizontal ativado." << endl;

			} else if (key == 'v' || key == 'V') {
				mask = vertical_mask;
				additional_laplacian_step = false;
				cout << "Filtro da vertical ativado." << endl;

			} else if (key == 'l' || key == 'L') {
				mask = laplacian_mask;
				additional_laplacian_step = false;
				cout << "Filtro da laplaciano ativado." << endl;

			} else if (key == 'q' || key == 'Q') {
				mask = gauss_mask;
				additional_laplacian_step = true;
				cout << "Filtro laplaciano do gaussiano ativado." << endl;

			}

			printmask(mask);
		}
	}
	return 0;
}