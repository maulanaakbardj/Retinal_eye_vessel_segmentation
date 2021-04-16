% Segmentasi Gambar retina mata 

file1 = imread('Source Image/retina mata.jpg');
file = imresize(file1,[200,200]);
Grayscale=rgb2gray(file);
a=edge(Grayscale, 'roberts');
b=edge(Grayscale, 'canny');
c=edge(Grayscale, 'sobel');
d=edge(Grayscale, 'prewitt');
e=edge(Grayscale, 'log');
f=edge(Grayscale, 'zerocross');

figure,
subplot(2,4,1), imshow(file), title('Citra Awal');
subplot(2,4,2), imshow(Grayscale), title('Citra Grayscale');
subplot(2,4,3), imshow(a), title('Citra Roberts Edge Detection  ');
subplot(2,4,4), imshow(b), title('Citra Canny Edge Detection ');
subplot(2,4,5), imshow(c), title('Citra Sobel Edge Detection ');
subplot(2,4,6), imshow(d), title('Citra Prewitt Edge detection');
subplot(2,4,7), imshow(e), title('Citra LoG Edge Detection');
subplot(2,4,8), imshow(f), title('Citra Zerocross Edge Detection');