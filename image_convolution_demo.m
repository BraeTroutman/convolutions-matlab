img = imread("https://media.geeksforgeeks.org/wp-content/uploads/gray.jpeg");

figure(1);
subplot(3,2,1);
imshow(img);
title("Original Image");

downedge = [ 1  1  1;...
             0  0  0;...
            -1 -1 -1];
subplot(3,2,2);
imshow(downedge, [-1, 1]);
title("Edge Filter");

subplot(3,2,3);
new_img = conv2(img, downedge, 'same');
imshow(uint8(new_img));
title('With Down Edge Filter')

subplot(3,2,5);
rightedge = [1 0 -1;...
             1 0 -1;...
             1 0 -1];
new_img = conv2(img, rightedge, 'same');
imshow(uint8(new_img));
title('Side Edge Filter');