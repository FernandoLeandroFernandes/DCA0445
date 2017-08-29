#include <iostream>
#include <cv.h>
#include <highgui.h>
#include <stdlib.h>
#include <time.h>

using namespace cv;
using namespace std;

int main(int argc, char** argv){

  Mat image;

  int width, height;

  image = imread(argv[1], CV_LOAD_IMAGE_GRAYSCALE);
  if (!image.data) {
    cout << "Falha do abrir " << argv[1] << ", verifique o caminho para o aquivo." << endl;
    waitKey();
  }

  namedWindow("window",WINDOW_AUTOSIZE);

  width=image.size().width;
  cout<<"Largura: " << width << endl;

  height=image.size().height;
  cout<<"Altura: " << height << endl;

  Mat swapimage(height, width, CV_LOAD_IMAGE_GRAYSCALE);

  srand((unsigned) time(NULL));
  int point = rand()%(height < width ? height : width);

  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      swapimage.at<uchar>(i,j) = image.at<uchar>(((i+point) % height), ((j+point) % width));
    }
  }

  imshow("window", swapimage);

  imwrite("swapped.png",swapimage);

  waitKey();

  return 0;
}