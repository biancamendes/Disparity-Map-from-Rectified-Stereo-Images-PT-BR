% Copyright 2020, Bianca de A. M. da Silva, Universidade Federal Fluminense.
% Github: https://github.com/biancamendes

L = imread ('view1.png');
R = imread ('view5.png');
DrOr = imread ('disp5.png');


subplot(2,5,1);
imshow(DrOr);
title('Disp Original')

subplot(2,5,2);
imshow(DR_3x3_SSD);
title('Disp Criada 3x3 SSD')

subplot(2,5,3);
imshow(DR_5x5_SSD);
title('Disp Criada 5x5 SSD')

subplot(2,5,4);
imshow(DR_7x7_SSD);
title('Disp Criada 7x7 SSD')

subplot(2,5,5);
imshow(DR_9x9_SSD);
title('Disp Criada 9x9 SSD')

subplot(2,5,6);
imshow(DrOr);
title('Disp Original')

subplot(2,5,7);
imshow(DR_3x3_NCC);
title('Disp Criada 3x3 NCC')

subplot(2,5,8);
imshow(DR_5x5_NCC);
title('Disp Criada 5x5 NCC')

subplot(2,5,9);
imshow(DR_7x7_NCC);
title('Disp Criada 7x7 NCC')

subplot(2,5,10);
imshow(DR_9x9_NCC);
title('Disp Criada 9x9 NCC')

imwrite(DR_3x3_SSD, 'DR_3x3_SSD.jpg', 'jpg')
imwrite(DR_5x5_SSD, 'DR_5x5_SSD.jpg', 'jpg')
imwrite(DR_7x7_SSD, 'DR_7x7_SSD.jpg', 'jpg')
imwrite(DR_9x9_SSD, 'DR_9x9_SSD.jpg', 'jpg')
imwrite(DR_3x3_NCC, 'DR_3x3_NCC.jpg', 'jpg')
imwrite(DR_5x5_NCC, 'DR_5x5_NCC.jpg', 'jpg')
imwrite(DR_7x7_NCC, 'DR_7x7_NCC.jpg', 'jpg')
imwrite(DR_9x9_NCC, 'DR_9x9_NCC.jpg', 'jpg')