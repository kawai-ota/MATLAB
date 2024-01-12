% Simulink初学者に向けたシミュレーション実習：（2023/11/21)
%「簡単なPID制御にSimulinkを通して触れる」
% 参照サイト（最下行にURLを記載）を荻野が初学者にアレンジしたもの


%% 初期化（最初にまとめると楽）
clc;          % コマンドウィンドウの初期化
clear all;    % ワークスペースの初期化
close all     % グラフを全部閉じる


%% 変数のセット（PIDのゲイン,制御対象のパラメータ）
% ===== PIDゲイン =====
Kp = 1;      % Ｐゲイン % 簡単の為、全て1に
Ki = 1;      % Iゲイン
Kd = 1;      % Dゲイン

% ===== 制御対象 =====
% = K/(A*s^2+B*s+C)
% 簡単な2次遅れ系の制御対象を記載

K = 1;     % 簡単の為、全て1に
A = 1;
B = 1;
C = 1;  

% 本来は2次遅れ系をしっかりと書くと、
% = ωn^2/(s^2+2*ζ*ωn*s+ωn^2)
% ζ：減衰係数,ωn:固有角周波数でいずれも正の定数
% 特に減衰係数ζの値によって、2次系の挙動は大きく変化する


%% その他の情報のセット（目標値,サンプリング時間など）
% ===== 目標値 =====
r_val = 10;         % ステップ状の目標値
% ランプ状やそれ以外の関数にしたい場合は, がおすすめ

% ===== Simulink内の情報 =====
FinalTime = 16;     % シミュレーション終了時刻[s]
SamplingTime = 0.1; % サンプリング時間[s]


%% Simulinkの実行や動作時の手助け
open('sim_PID');     % Simulinkを起動
set_param('sim_PID','WideLines','on'); 
set_param('sim_PID','ShowLineDimensions','on');
sim('sim_PID');      % Simulinkの実行

% set_param('simファイル','WideLines','on')
% ベクトルまたは行列信号を伝達するラインをスカラー信号を伝達するラインよりも太く描画します。
% set_param('simファイル','ShowLineDimensions','on') 
% モデルのブロック線図上に信号の次元を表示


%% グラフ化

% Main_PID_Graph   % グラフ描画用Mファイルの実行




% 参照サイト「理系大学教員の本気ブログ内：
% Matlab_Simulink：PID制御プログラム（無料公開）」2022年

% ===========URL===========
% https://forfree.hatenablog.jp/entry/2022/11/14/105510#google_vignette