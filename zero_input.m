% システム行列 A, B, C, D の定義
A = [0 1; -10 -2];
B = [0; 1];
C = [1 0];
D = 0;

% システム状態空間モデルの作成
sysP = ss(A, B, C, D);

% 初期条件
x0 = [1; 0];

% シミュレーション時間の設定
t = 0:0.01:5;

% システムの初期値応答の計算
[y, t, x] = initial(sysP, x0, t);
