% Limpieza y configuración inicial
clear;
close all;

% Configuración de la cámara web
cam = webcam;

% Captura la imagen 1
disp('Presiona una tecla para capturar la imagen 1...');
pause;
imagen_1 = snapshot(cam);

% Muestra la imagen 1 con los descriptores
points_1 = detectSURFFeatures(rgb2gray(imagen_1), 'MetricThreshold', 1000);
[features_1, valid_points_1] = extractFeatures(rgb2gray(imagen_1), points_1);

figure;
imshow(imagen_1);
hold on;
plot(valid_points_1);
title('Imagen 1 con Descriptores');
hold off;

% Captura la imagen 2
disp('Presiona una tecla para capturar la imagen 2...');
pause;
imagen_2 = snapshot(cam);

% Muestra la imagen 2 con los descriptores
points_2 = detectSURFFeatures(rgb2gray(imagen_2), 'MetricThreshold', 1000);
[features_2, valid_points_2] = extractFeatures(rgb2gray(imagen_2), points_2);

figure;
imshow(imagen_2);
hold on;
plot(valid_points_2);
title('Imagen 2 con Descriptores');
hold off;

% Comparación y cálculo de desplazamiento entre Imagen 1 y 2
index_pairs_1_2 = matchFeatures(features_1, features_2, 'Unique', true);
matched_points_1_2 = valid_points_1(index_pairs_1_2(:, 1));
matched_points_2_2 = valid_points_2(index_pairs_1_2(:, 2));

% Muestra los detalles comunes entre las imágenes 1 y 2
figure;
showMatchedFeatures(imagen_1, imagen_2, matched_points_1_2, matched_points_2_2, 'montage');
title('Detalles comunes entre Imagen 1 y 2');

% Cálculo del desplazamiento entre las imágenes 1 y 2
desplazamiento_promedio_x_1_2 = mean(matched_points_1_2.Location(:, 1) - matched_points_2_2.Location(:, 1));
desplazamiento_promedio_y_1_2 = mean(matched_points_1_2.Location(:, 2) - matched_points_2_2.Location(:, 2));

fprintf('Desplazamiento promedio de la Imagen 1 a la Imagen 2 en x: %.2f\n', desplazamiento_promedio_x_1_2);
fprintf('Desplazamiento promedio de la Imagen 1 a la Imagen 2 en y: %.2f\n', desplazamiento_promedio_y_1_2);

% Captura la imagen 3
disp('Presiona una tecla para capturar la imagen 3...');
pause;
imagen_3 = snapshot(cam);

% Muestra la imagen 3 con los descriptores
points_3 = detectSURFFeatures(rgb2gray(imagen_3), 'MetricThreshold', 1000);
[features_3, valid_points_3] = extractFeatures(rgb2gray(imagen_3), points_3);

figure;
imshow(imagen_3);
hold on;
plot(valid_points_3);
title('Imagen 3 con Descriptores');
hold off;

% Comparación y cálculo de desplazamiento entre Imagen 2 y 3
index_pairs_2_3 = matchFeatures(features_2, features_3, 'Unique', true);
matched_points_2_3 = valid_points_2(index_pairs_2_3(:, 1));
matched_points_3_3 = valid_points_3(index_pairs_2_3(:, 2));

% Muestra los detalles comunes entre las imágenes 2 y 3
figure;
showMatchedFeatures(imagen_2, imagen_3, matched_points_2_3, matched_points_3_3, 'montage');
title('Detalles comunes entre Imagen 2 y 3');

% Cálculo del desplazamiento entre las imágenes 2 y 3
desplazamiento_promedio_x_2_3 = mean(matched_points_2_3.Location(:, 1) - matched_points_3_3.Location(:, 1));
desplazamiento_promedio_y_2_3 = mean(matched_points_2_3.Location(:, 2) - matched_points_3_3.Location(:, 2));

fprintf('Desplazamiento promedio de la Imagen 2 a la Imagen 3 en x: %.2f\n', desplazamiento_promedio_x_2_3);
fprintf('Desplazamiento promedio de la Imagen 2 a la Imagen 3 en y: %.2f\n', desplazamiento_promedio_y_2_3);

% Captura la imagen 4
disp('Presiona una tecla para capturar la imagen 4...');
pause;
imagen_4 = snapshot(cam);

% Muestra la imagen 4 con los descriptores
points_4 = detectSURFFeatures(rgb2gray(imagen_4), 'MetricThreshold', 1000);
[features_4, valid_points_4] = extractFeatures(rgb2gray(imagen_4), points_4);

figure;
imshow(imagen_4);
hold on;
plot(valid_points_4);
title('Imagen 4 con Descriptores');
hold off;

% Comparación y cálculo de desplazamiento entre Imagen 3 y 4
index_pairs_3_4 = matchFeatures(features_3, features_4, 'Unique', true);
matched_points_3_4 = valid_points_3(index_pairs_3_4(:, 1));
matched_points_4_4 = valid_points_4(index_pairs_3_4(:, 2));

% Muestra los detalles comunes entre las imágenes 3 y 4
figure;
showMatchedFeatures(imagen_3, imagen_4, matched_points_3_4, matched_points_4_4, 'montage');
title('Detalles comunes entre Imagen 3 y 4');

% Cálculo del desplazamiento entre las imágenes 3 y 4
desplazamiento_promedio_x_3_4 = mean(matched_points_3_4.Location(:, 1) - matched_points_4_4.Location(:, 1));
desplazamiento_promedio_y_3_4 = mean(matched_points_3_4.Location(:, 2) - matched_points_4_4.Location(:, 2));

fprintf('Desplazamiento promedio de la Imagen 3 a la Imagen 4 en x: %.2f\n', desplazamiento_promedio_x_3_4);
fprintf('Desplazamiento promedio de la Imagen 3 a la Imagen 4 en y: %.2f\n', desplazamiento_promedio_y_3_4);

% Grafica los desplazamientos acumulativos
figure;
plot([0, desplazamiento_promedio_x_1_2, desplazamiento_promedio_x_1_2 + desplazamiento_promedio_x_2_3, ...
      desplazamiento_promedio_x_1_2 + desplazamiento_promedio_x_2_3 + desplazamiento_promedio_x_3_4], ...
     [0, desplazamiento_promedio_y_1_2, desplazamiento_promedio_y_1_2 + desplazamiento_promedio_y_2_3, ...
      desplazamiento_promedio_y_1_2 + desplazamiento_promedio_y_2_3 + desplazamiento_promedio_y_3_4], '-o', 'LineWidth', 2);
title('Desplazamiento acumulado en 2D');
xlabel('Desplazamiento acumulado en x');
ylabel('Desplazamiento acumulado en y');
grid on;

% Muestra la secuencia de imágenes
figure;
subplot(2, 2, 1);
imshow(imagen_1);
title('Imagen 1');

subplot(2, 2, 2);
imshow(imagen_2);
title('Imagen 2');

subplot(2, 2, 3);
imshow(imagen_3);
title('Imagen 3');

subplot(2, 2, 4);
imshow(imagen_4);
title('Imagen 4');

% Guarda las imágenes en archivos PNG
imwrite(imagen_1, 'imagen_1.png');
imwrite(imagen_2, 'imagen_2.png');
imwrite(imagen_3, 'imagen_3.png');
imwrite(imagen_4, 'imagen_4.png');

% Cierra la cámara web
clear cam;
