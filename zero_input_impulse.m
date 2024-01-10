% システム行列 A, B, C, D の定義
A = [0 1; -10 -2];
B = [0; 1];
C = [1 0];
D = 0;

% システム状態空間モデルの作成
sysP = ss(A, B, C, D);

% シミュレーション時間の設定
t = 0:0.01:5;

% ステップ応答の計算とプロット
y_step = step(sysP, t);
figure(1);
plot(t, y_step);
xlabel('t[s]');
ylabel('y(t)');
title('Step Response');
grid on;

% インパルス応答の計算とプロット
y_impulse = impulse(sysP, t);
figure(2);
plot(t, y_impulse);
xlabel('t[s]');
ylabel('y(t)');
title('Impulse Response');
grid on;