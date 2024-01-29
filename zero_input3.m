% システム行列 A, B, C, D の定義をinput2より変更
A = [0 2; -8 -2];
B = [0; 2];
C = [1 1];
D = 0;

% システム状態空間モデルの作成
sysP = ss(A, B, C, D);

% 初期条件
x0 = [1; 0];

% シミュレーション時間の設定
t = 0:0.01:5;

% システムの初期値応答の計算
[y, t, x] = initial(sysP, x0, t);

% 応答のプロット
plot(t, y);
xlabel('t[s]');
ylabel('y(t)');
title('System Response');
grid on;
