% Simulink初学者に向けたシミュレーション実習：（2023/11/21)
% グラフ描画用Mファイル


% Simulinkを用いたMATLABのグラフの描画方法（2つ）


%% 1.Simulink内のScopeのDataを直接読み込む方法
% ===== Simulinkデータ格納 =====
t = ScopeData.time;                     % 時刻情報
y = ScopeData.signals(1).values(:, 1);  % 出力
r = ScopeData.signals(1).values(:, 2);  % 目標値
u = ScopeData.signals(2).values(:, 1);  % 入力

% ===== グラフ描画 =====
% ----- y -----
figure;
subplot(211);            % 2つのグラフを一つに表示する,()内で表示の仕方を指定
plot(t,y,'LineWidth',3); % Plotの実行 (X,Y)軸
hold on;                 % グラフを複数描画する際のコマンド(yの挙動が残る)
% ----- r -----
plot(t,r,'--','LineWidth',3);  % Plotの実行 (X,Y)軸

grid on;   % グラフ内の補助線
xlabel('$ t {\rm [s]} $', 'interpreter', 'latex','fontsize',25); % X軸のラベル
ylabel('$r(t)$,$r(t)$', 'interpreter', 'latex','fontsize',25);   % Y軸のラベル

% ''内を$で囲み,Latexの書き方で書くと綺麗になる
% ('interpreter', 'latex'の入れ忘れに注意)

legend('$ y(t) $', '$ r(t) $','interpreter','latex', ...
    'location','southeast','fontsize',20);    % 凡例の設定
% 'location','southeast'で凡例の位置を右下（南東）に
% 'fontsize',数字 でフォントの大きさを好きなサイズに
% 'LineWidth',数字 でグラフ線を好きなサイズに
% plot( ,'--')で破線に

title('入出力の挙動のグラフ(PID制御)') % titleは消したかったらtitle('')のみ

% ----- u -----
subplot(212);
plot(t,u,'LineWidth',3);
hold on;
grid on;
xlabel('$ t {\rm [s]} $', 'interpreter', 'latex','fontsize',25);
ylabel('$ u(t) $', 'interpreter', 'latex','fontsize',25);





% %% 2.Simulink内のWorkSpaceブロックを用いる方法
% 
% % WorkSpaceブロックは, Simulink内の時系列情報を
% % MATLAB側のワークスペース内に入れ込む役割のブロック
% 
% % Plot(X,Y)ではなく、Workspace内にある各時系列情報を呼び出す
% % だけなので、Plot(X)のみでいい
% 
% % ===== グラフ描画 =====
% % ----- y -----
% figure;
% subplot(211);  
% plot(y,'LineWidth',3);  % Plot(X)の形
% hold on;   
% % ----- r -----
% plot(r,'--','LineWidth',3);
% grid on;   
% 
% % 後のレイアウト関係は1と同じ
% 
% xlabel('$ t {\rm [s]} $', 'interpreter', 'latex','fontsize',25);  % X軸のラベル
% ylabel('$r(t)$,$r(t)$', 'interpreter', 'latex','fontsize',25); 
% legend('$ y(t) $', '$ r(t) $','interpreter','latex', ...
%     'location','southeast','fontsize',20); % 凡例の設定
% 
% title('入出力の挙動のグラフ(PID制御)') % titleは消したかったらtitle('')のみ
% 
% % ----- u -----
% subplot(212);
% plot(u,'LineWidth',3);
% hold on;
% grid on;
% xlabel('$ t {\rm [s]} $', 'interpreter', 'latex','fontsize',25);
% ylabel('$ u(t) $', 'interpreter', 'latex','fontsize',25);
% 
% 
%%この2のやり方だと, 綺麗にX軸が16秒になってくれない時がある
%%理由は, yやrが161個のデータを持っていて（ワークスペースを見ても自明）
%%Plotの際に時刻tの様なX軸の情報を用いていないから
%%yやrのデータ数が161個の理由はシミュレーション時間を16[s],サンプリング時間を0.1[s]に設定したから

% 
% 
