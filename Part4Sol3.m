%% Goal1: trels  [0 0 -90]
current = [0 0 0];
disp('Current =');
disp(current);
trels = [0 0 -90];
srelb = [-0.1, 0.3 0];
trelw = [0.1 0.2 30];

current = SOLVE(trels, current, srelb, trelw);
disp('new pose =');
disp(current);


%% Goal2: trels [0.6 -0.3 45]
disp('Current =');
disp(current);
trels = [0.6 -0.3 45];
srelb = [-0.1, 0.3 0];
trelw = [0.1 0.2 30];

current = SOLVE(trels, current, srelb, trelw);
disp('new pose =');
disp(current);



%% Goal3: trels = [-0.4 0.3 120]
disp('Current =');
disp(current);
trels = [-0.4 0.3 120];
srelb = [-0.1, 0.3 0];
trelw = [0.1 0.2 30];

current = SOLVE(trels, current, srelb, trelw);
disp('new pose =');
disp(current);


    
%% Goal4: trels = [0.8 1.4 30]
disp('Current =');
disp(current);
trels = [0.8 1.4 30];

srelb = [-0.1, 0.3 0];
trelw = [0.1 0.2 30];

output = SOLVE(trels, current, srelb, trelw);
disp('new pose =');
disp(output);


