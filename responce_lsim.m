% システム行列 A, B, C, D の定義
A = [0 1; -10 -2];
B = [0; 1];
C = [1 0];
D = 0;

% シミュレーション時間の設定
t = 0:0.01:5;
u = zeros(size(t)); % 入力信号 u の初期化

% 入力信号 u の設定
u(1:200) = t(1:200) / 2;
u(201:501) = ones(1,301); % 修正: ones(1,301) を指定

% 初期条件
x0 = [0.1; 0];

% システム応答の計算
y = lsim(sysP, u, t, x0);

% 応答のプロット
plot(t, y);
xlabel('t[s]');
ylabel('y(t)');
title('System Response');
grid on;