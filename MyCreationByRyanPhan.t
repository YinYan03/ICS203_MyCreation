% Ryan Phan
% Mr. Rosen
% April 6, 2018
% MyCreation - This program outputs an animation about 5 dinosaurs (T-rex, Velociraptor, Triceratops, Pterodactyl, Brachiosaurus) trying to escape the an asteroid strike. Thankfully, an elasmosaurus saves them.

% This procedure outputs a scene where the sky is red, there are four mountains, some ground, and some water.
procedure background
    for x : 0 .. 640
	drawline (0 + x, 75, 0 + x, 400, 4)      % Sky
	drawline (0 + x, 70, 0 + x, 275, 20)     % Mountain
    end for

    for x : 0 .. 310
	drawline (0 + x, 0, 0 + x, 75, 18)       % Ground
    end for

    for x : 0 .. 329
	drawline (311 + x, 0, 311 + x, 70, 54)   % Water
    end for

    for x : 0 .. 250
	drawline (x, 275, 120, 350, 20)          % Leftmost Mountain
	drawline (130 + x, 275, 240, 375, 20)    % Left Mountain
	drawline (310 + x, 275, 440, 390, 20)    % Right Mountain
	drawline (450 + x, 275, 560, 380, 20)    % Rightmost Mountain
    end for
end background

% This procedure is the open sea, with a gray sky due to the smog from the asteroid.
procedure background2
    for x : 0 .. 640
	drawline (0 + x, 0, 0 + x, 70, 55)      % Water
	drawline (0 + x, 70, 0 + x, 400, 18)    % Sky
    end for
end background2

% This procedure brings in the elasmosaurus, which will come from the right.
procedure waterDino
    for x : 0 .. 350
	drawfillbox (680 - x, 71, 988 - x, 260, 20)     % Erase
	drawfillbox (890 - x, 260, 985 - x, 200, 122)   % Head
	drawfillbox (890 - x, 260, 940 - x, 71, 122)    % Neck
	drawfillbox (985 - x, 220, 960 - x, 215, 20)    % Mouth
	drawfilloval (905 - x, 245, 5, 5, 0)            % Eye
	drawfillarc (810 - x, 71, 130, 50, 0, 180, 122) % Back
	drawline (770 - x, 100, 830 - x, 100, 0)        % Fin
	drawline (770 - x, 100, 830 - x, 90, 0)         % Fin
	drawline (830 - x, 100, 830 - x, 90, 0)         % Fin
	delay (5)
    end for
end waterDino

% This procedure makes the T-Rex, the triceratops, and the velociraptor enter from the left.
procedure firstMoveRight
    for x : 0 .. 330
	%T-Rex
	drawfillbox (-196 + x, 76, -95 + x, 201, 20)        % Erase
	drawfillbox (-145 + x, 200, -96 + x, 160, 118)      % Head
	drawfillbox (-110 + x, 175, -96 + x, 170, 20)       % Mouth
	drawfillbox (-145 + x, 200, -115 + x, 95, 118)      % Neck
	drawfillbox (-145 + x, 160, -165 + x, 125, 118)     % Back
	drawfilloval (-135 + x, 190, 3, 3, 0)               % Eye
	drawline (-115 + x, 135, -105 + x, 135, 118)        % Arms
	drawline (-105 + x, 135, -105 + x, 130, 118)        % Arms
	drawfillbox (-165 + x, 76, -155 + x, 95, 118)       % Right Leg
	drawfillbox (-165 + x, 76, -145 + x, 85, 118)       % Right Leg
	drawfillbox (-135 + x, 76, -125 + x, 95, 118)       % Left Leg
	drawfillbox (-135 + x, 76, -115 + x, 85, 118)       % Left Leg
	drawfillarc (-175 + x, 120, 20, 25, 90, 270, 118)   % Tail
	drawfillbox (-175 + x, 125, -115 + x, 95, 118)      % Body

	%Triceratops
	drawfillbox (-326 + x, 76, -200 + x, 150, 20)      % Erase
	drawline (-205 + x, 135, -210 + x, 125, 0)         % Horn
	drawline (-205 + x, 135, -215 + x, 127, 0)         % Horn
	drawfillarc (-205 + x, 120, 40, 40, 135, 225, 54)  % Head
	drawfillbox (-295 + x, 100, -240 + x, 140, 54)     % Body
	drawfillarc (-265 + x, 140, 30, 10, 0, 180, 54)    % Top Back
	drawfilloval (-230 + x, 125, 3, 3, 0)              % Eye
	drawfillarc (-295 + x, 140, 30, 30, 180, 270, 54)  % Tail
	drawfillarc (-265 + x, 100, 30, 10, 180, 0, 54)    % Belly
	drawfillbox (-295 + x, 100, -285 + x, 76, 54)      % Left Leg
	drawfillbox (-245 + x, 100, -235 + x, 76, 54)      % Right Leg

	%Velociraptor
	drawfillbox (-94 + x, 76, -10 + x, 135, 20)
	drawfillarc (-10 + x, 120, 40, 40, 160, 180, 41)   % Head
	drawfillbox (-50 + x, 130, -40 + x, 110, 41)       % Neck
	drawfillbox (-40 + x, 110, -80 + x, 90, 41)        % Body
	drawfilloval (-40 + x, 125, 2, 2, 0)               % Eye
	drawline (-80 + x, 110, -90 + x, 120, 41)          % Tail
	drawfillbox (-75 + x, 90, -70 + x, 76, 41)         % Leg
	drawline (-45 + x, 100, -45 + x, 105, 0)           % Arm
	drawline (-45 + x, 100, -30 + x, 100, 0)           % Arm
	drawline (-30 + x, 100, -30 + x, 95, 0)            % Arm
	delay (5)
    end for
end firstMoveRight

% This procedure makes the T-Rex, the velociraptor, and the triceratops hop onto the elasmosaurus.
procedure moveUp
    %Velociraptor
    for x : 0 .. 185
	drawfillbox (239 + x, 76 + x, 323 + x, 135 + x, 20)  % Erase
	drawfillarc (323 + x, 120 + x, 40, 40, 160, 180, 41) % Head
	drawfillbox (283 + x, 130 + x, 293 + x, 110 + x, 41) % Neck
	drawfillbox (293 + x, 110 + x, 253 + x, 90 + x, 41)  % Body
	drawfilloval (293 + x, 125 + x, 2, 2, 0)             % Eye
	drawline (253 + x, 110 + x, 243 + x, 120 + x, 41)    % Tail
	drawfillbox (258 + x, 90 + x, 263 + x, 77 + x, 41)   % Leg
	drawline (288 + x, 100 + x, 288 + x, 105 + x, 0)     % Arm
	drawline (288 + x, 100 + x, 303 + x, 100 + x, 0)     % Arm
	drawline (303 + x, 100 + x, 303 + x, 95 + x, 0)      % Arm
	delay (5)
    end for

    for x : 0 .. 110
	drawfillbox (425 + x, 261, 510 + x, 319, 20)      % Erase
	drawfillarc (510 + x, 304, 40, 40, 159, 180, 41)  % Head
	drawfillbox (470 + x, 314, 480 + x, 294, 41)      % Neck
	drawfillbox (480 + x, 294, 440 + x, 274, 41)      % Body
	drawfilloval (480 + x, 309, 2, 2, 0)              % Eye
	drawline (440 + x, 295, 430 + x, 305, 41)         % Tail
	drawfillbox (445 + x, 274, 450 + x, 261, 41)      % Leg
	drawline (475 + x, 284, 475 + x, 289, 0)          % Arm
	drawline (475 + x, 284, 490 + x, 284, 0)          % Arm
	drawline (490 + x, 284, 490 + x, 279, 0)          % Arm
	delay (5)
    end for

    for x : 0 .. 45
	%T-Rex
	drawfillbox (134, 76 + x, 235, 201 + x, 20)      % Erase
	drawfillbox (185, 200 + x, 234, 160 + x, 118)    % Head
	drawfillbox (220, 175 + x, 234, 170 + x, 20)     % Mouth
	drawfillbox (185, 200 + x, 215, 95 + x, 118)     % Neck
	drawfillbox (185, 160 + x, 165, 125 + x, 118)    % Back
	drawfilloval (195, 190 + x, 3, 3, 0)             % Eye
	drawline (215, 135 + x, 225, 135 + x, 118)       % Arms
	drawline (225, 135 + x, 225, 130 + x, 118)       % Arms
	drawfillbox (165, 77 + x, 175, 95 + x, 118)      % Right Leg
	drawfillbox (165, 77 + x, 185, 85 + x, 118)      % Right Leg
	drawfillbox (195, 77 + x, 205, 95 + x, 118)      % Left Leg
	drawfillbox (195, 77 + x, 215, 85 + x, 118)      % Left Leg
	drawfillarc (155, 120 + x, 20, 25, 90, 270, 118) % Tail
	drawfillbox (155, 125 + x, 215, 95 + x, 118)     % Body

	%Triceratops
	drawfillbox (4, 76 + x, 130, 150 + x, 20)        % Erase
	drawline (125, 135 + x, 120, 125 + x, 0)         % Horn
	drawline (125, 135 + x, 115, 127 + x, 0)         % Horn
	drawfillarc (125, 120 + x, 40, 40, 135, 225, 54) % Head
	drawfillbox (35, 100 + x, 90, 140 + x, 54)       % Body
	drawfillarc (65, 140 + x, 30, 10, 0, 180, 54)    % Top Back
	drawfilloval (100, 125 + x, 3, 3, 0)             % Eye
	drawfillarc (35, 140 + x, 30, 30, 180, 270, 54)  % Tail
	drawfillarc (65, 100 + x, 30, 10, 180, 0, 54)    % Belly
	drawfillbox (35, 100 + x, 45, 77 + x, 54)        % Left Leg
	drawfillbox (85, 100 + x, 95, 77 + x, 54)        % Right Leg
	delay (5)
    end for

    for x : 0 .. 300
	%T-Rex
	drawfillbox (134 + x, 122, 235 + x, 245, 20)     % Erase
	drawfillbox (185 + x, 245, 234 + x, 205, 118)    % Head
	drawfillbox (220 + x, 220, 234 + x, 215, 20)     % Mouth
	drawfillbox (185 + x, 245, 215 + x, 140, 118)    % Neck
	drawfillbox (185 + x, 205, 165 + x, 170, 118)    % Back
	drawfilloval (195 + x, 235, 3, 3, 0)             % Eye
	drawline (215 + x, 180, 225 + x, 180, 118)       % Arms
	drawline (225 + x, 180, 225 + x, 175, 118)       % Arms
	drawfillbox (165 + x, 122, 175 + x, 140, 118)    % Right Leg
	drawfillbox (165 + x, 122, 185 + x, 130, 118)    % Right Leg
	drawfillbox (195 + x, 122, 205 + x, 140, 118)    % Left Leg
	drawfillbox (195 + x, 122, 215 + x, 130, 118)    % Left Leg
	drawfillarc (155 + x, 165, 20, 25, 90, 270, 118) % Tail
	drawfillbox (155 + x, 170, 215 + x, 140, 118)    % Body

	%Triceratops
	drawfillbox (4 + x, 121, 130 + x, 195, 20)        % Erase
	drawline (125 + x, 180, 120 + x, 170, 0)          % Horn
	drawline (125 + x, 180, 115 + x, 172, 0)          % Horn
	drawfillarc (125 + x, 165, 40, 40, 135, 225, 54)  % Head
	drawfillbox (35 + x, 145, 90 + x, 185, 54)        % Body
	drawfillarc (65 + x, 185, 30, 10, 0, 180, 54)     % Top Back
	drawfilloval (100 + x, 170, 3, 3, 0)              % Eye
	drawfillarc (35 + x, 185, 30, 30, 180, 270, 54)   % Tail
	drawfillarc (65 + x, 145, 30, 10, 180, 0, 54)     % Belly
	drawfillbox (35 + x, 145, 45 + x, 122, 54)        % Left Leg
	drawfillbox (85 + x, 145, 95 + x, 122, 54)        % Right Leg
	delay (5)
    end for
end moveUp

% Flyboy (Pterodactyl) will enter from the left
procedure pteroEnter
    for x : 0 .. 180
	drawfillbox (-131 + x, 210, -9 + x, 265, 20)      % Erase
	drawfillarc (-10 + x, 230, 50, 50, 150, 180, 12)  % Head
	drawfilloval (-50 + x, 240, 3, 3, 0)              % Eye
	drawfillbox (-75 + x, 230, -120 + x, 210, 12)     % Body
	drawfillarc (-75 + x, 230, 15, 15, 270, 0, 12)    % Neck
	drawfillarc (-80 + x, 230, 30, 35, 90, 180, 12)   % Wings
	drawline (-85 + x, 230, -85 + x, 250, 7)          % Arm
	drawfillbox (-120 + x, 230, -130 + x, 225, 12)    % Top Leg
	drawfillbox (-120 + x, 220, -128 + x, 215, 12)    % Bottom Leg
	delay (5)
    end for
end pteroEnter

% Tall Neck (Branchiosaurus) will enter from the left and hop onto the pterodactyl.
procedure tallNeckEnter
    for x : 0 .. 150
	drawfillbox (-146 + x, 76, -51 + x, 200, 20)       % Erase
	drawfillbox (-90 + x, 200, -50 + x, 175, 121)      % Head
	drawline (-60 + x, 180, -50 + x, 180, 0)           % Mouth
	drawfillbox (-90 + x, 200, -70 + x, 100, 121)      % Neck
	drawfillbox (-70 + x, 100, -135 + x, 140, 121)     % Body
	drawfilloval (-80 + x, 190, 3, 3, 0)               % Eye
	drawfillarc (-135 + x, 140, 10, 25, 90, 270, 121)  % Tail
	drawfillbox (-90 + x, 76, -70 + x, 100, 121)       % Left Leg
	drawfillbox (-135 + x, 76, -115 + x, 100, 121)     % Right Leg
	delay (5)
    end for

    for x : 0 .. 10
	drawfillbox (4, 76 + x, 100, 200 + x, 20)         % Erase
	drawfillbox (60, 200 + x, 100, 175 + x, 121)      % Head
	drawline (90, 180 + x, 100, 180 + x, 0)           % Mouth
	drawfillbox (60, 200 + x, 80, 100 + x, 121)       % Neck
	drawfillbox (80, 100 + x, 15, 140 + x, 121)       % Body
	drawfilloval (70, 190 + x, 3, 3, 0)               % Eye
	drawfillarc (15, 140 + x, 10, 25, 90, 270, 121)   % Tail
	drawfillbox (60, 77 + x, 80, 100 + x, 121)        % Left Leg
	drawfillbox (15, 77 + x, 35, 100 + x, 121)        % Right leg
	delay (5)
    end for
end tallNeckEnter

% This procedure moves off all of the dinosaurs off-screen.
procedure allRight
    for x : 0 .. 640
	%Sea Dino
	drawfillbox (329 + x, 71, 638 + x, 260, 20)     % Erase
	drawfillbox (540 + x, 260, 635 + x, 200, 122)   % Head
	drawfillbox (540 + x, 260, 590 + x, 71, 122)    % Neck
	drawfillbox (635 + x, 220, 610 + x, 215, 20)    % Mouth
	drawfilloval (555 + x, 245, 5, 5, 0)            % Eye
	drawfillarc (460 + x, 71, 130, 50, 0, 180, 122) % Back
	drawline (420 + x, 100, 480 + x, 100, 0)        % Fin
	drawline (420 + x, 100, 480 + x, 90, 0)         % Fin
	drawline (480 + x, 100, 480 + x, 90, 0)         % Fin

	%Velociraptor
	drawfillbox (535 + x, 261, 620 + x, 319, 20)      % Erase
	drawfillarc (620 + x, 304, 40, 40, 159, 180, 41)  % Head
	drawfillbox (580 + x, 314, 590 + x, 294, 41)      % Neck
	drawfillbox (590 + x, 294, 550 + x, 274, 41)      % Body
	drawfilloval (590 + x, 309, 2, 2, 0)              % Eye
	drawline (550 + x, 295, 540 + x, 305, 41)         % Tail
	drawfillbox (555 + x, 274, 560 + x, 261, 41)      % Leg
	drawline (585 + x, 284, 585 + x, 289, 0)          % Arm
	drawline (585 + x, 284, 600 + x, 284, 0)          % Arm
	drawline (600 + x, 284, 600 + x, 279, 0)          % Arm

	%T-Rex
	drawfillbox (434 + x, 122, 535 + x, 245, 20)      % Erase
	drawfillbox (485 + x, 245, 534 + x, 205, 118)     % Head
	drawfillbox (520 + x, 220, 534 + x, 215, 20)      % Mouth
	drawfillbox (485 + x, 245, 515 + x, 140, 118)     % Neck
	drawfillbox (485 + x, 205, 465 + x, 170, 118)     % Back
	drawfilloval (495 + x, 235, 3, 3, 0)              % Eye
	drawline (515 + x, 180, 525 + x, 180, 118)        % Arms
	drawline (525 + x, 180, 525 + x, 175, 118)        % Arms
	drawfillbox (465 + x, 122, 475 + x, 140, 118)     % Right Leg
	drawfillbox (465 + x, 122, 485 + x, 130, 118)     % Right Leg
	drawfillbox (495 + x, 122, 505 + x, 140, 118)     % Left Leg
	drawfillbox (495 + x, 122, 515 + x, 130, 118)     % Left Leg
	drawfillarc (455 + x, 165, 20, 25, 90, 270, 118)  % Tail
	drawfillbox (455 + x, 170, 515 + x, 140, 118)     % Body

	%Triceratops
	drawfillbox (304 + x, 121, 430 + x, 195, 20)      % Erase
	drawline (425 + x, 180, 420 + x, 170, 0)          % Horn
	drawline (425 + x, 180, 415 + x, 172, 0)          % Horn
	drawfillarc (425 + x, 165, 40, 40, 135, 225, 54)  % Head
	drawfillbox (335 + x, 145, 390 + x, 185, 54)      % Body
	drawfillarc (365 + x, 185, 30, 10, 0, 180, 54)    % Top Back
	drawfilloval (400 + x, 170, 3, 3, 0)              % Eye
	drawfillarc (335 + x, 185, 30, 30, 180, 270, 54)  % Tail
	drawfillarc (365 + x, 145, 30, 10, 180, 0, 54)    % Belly
	drawfillbox (335 + x, 145, 345 + x, 122, 54)      % Left Leg
	drawfillbox (385 + x, 145, 395 + x, 122, 54)      % Right Leg

	%Brachiosaurus
	drawfillbox (4 + x, 86, 100 + x, 210, 20)         % Erase
	drawfillbox (60 + x, 210, 100 + x, 185, 121)      % Head
	drawline (90 + x, 190, 100 + x, 190, 0)           % Mouth
	drawfillbox (60 + x, 210, 80 + x, 110, 121)       % Neck
	drawfillbox (80 + x, 110, 15 + x, 150, 121)       % Body
	drawfilloval (70 + x, 200, 3, 3, 0)               % Eye
	drawfillarc (15 + x, 150, 10, 25, 90, 270, 121)   % Tail
	drawfillbox (60 + x, 87, 80 + x, 110, 121)        % Left Leg
	drawfillbox (15 + x, 87, 35 + x, 110, 121)        % Right Leg

	%Ptero
	drawfillbox (49 + x, 210, 171 + x, 265, 20)       % Erase
	drawfillarc (170 + x, 230, 50, 50, 150, 180, 12)  % Head
	drawfilloval (130 + x, 240, 3, 3, 0)              % Eye
	drawfillbox (105 + x, 230, 60 + x, 210, 12)       % Body
	drawfillarc (105 + x, 230, 15, 15, 270, 0, 12)    % Neck
	drawfillarc (100 + x, 230, 30, 35, 90, 180, 12)   % Wings
	drawline (95 + x, 230, 95 + x, 250, 7)            % Arm
	drawfillbox (60 + x, 230, 50 + x, 225, 12)        % Top Leg
	drawfillbox (60 + x, 220, 52 + x, 215, 12)        % Bottom Leg
	delay (5)
    end for
end allRight

% This procedure makes the dinosaurs riding the elasmosaurus enter from the right, moving across the sea.
procedure allRight2
    for x : 0 .. 1000
	%Sea Dino
	drawfillbox (-311 + x, 71, -2 + x, 260, 18)       % Erase
	drawfillbox (-100 + x, 260, -5 + x, 200, 122)     % Head
	drawfillbox (-100 + x, 260, -50 + x, 71, 122)     % Neck
	drawfillbox (-5 + x, 220, -30 + x, 215, 18)       % Mouth
	drawfilloval (-85 + x, 245, 5, 5, 0)              % Eye
	drawfillarc (-180 + x, 71, 130, 50, 0, 180, 122)  % Back
	drawline (-220 + x, 100, -160 + x, 100, 0)        % Fin
	drawline (-220 + x, 100, -160 + x, 90, 0)         % Fin
	drawline (-160 + x, 100, -160 + x, 90, 0)         % Fin

	% Velociraptor
	drawfillbox (-105 + x, 261, -20 + x, 319, 18)     % Erase
	drawfillarc (-20 + x, 304, 40, 40, 159, 180, 41)  % Head
	drawfillbox (-60 + x, 314, -50 + x, 294, 41)      % Neck
	drawfillbox (-50 + x, 294, -90 + x, 274, 41)      % Body
	drawfilloval (-50 + x, 309, 2, 2, 0)              % Eye
	drawline (-90 + x, 295, -100 + x, 305, 41)        % Tail
	drawfillbox (-85 + x, 274, -80 + x, 261, 41)      % Leg
	drawline (-55 + x, 284, -55 + x, 289, 0)          % Arm
	drawline (-55 + x, 284, -40 + x, 284, 0)          % Arm
	drawline (-40 + x, 284, -40 + x, 279, 0)          % Arm

	%T-Rex
	drawfillbox (-206 + x, 122, -105 + x, 245, 18)    % Erase
	drawfillbox (-155 + x, 245, -104 + x, 205, 118)   % Head
	drawfillbox (-120 + x, 220, -104 + x, 215, 18)    % Mouth
	drawfillbox (-155 + x, 245, -125 + x, 140, 118)   % Neck
	drawfillbox (-155 + x, 205, -175 + x, 170, 118)   % Back
	drawfilloval (-145 + x, 235, 3, 3, 0)             % Eye
	drawline (-125 + x, 180, -115 + x, 180, 118)      % Arms
	drawline (-115 + x, 180, -115 + x, 175, 118)      % Arms
	drawfillbox (-175 + x, 122, -165 + x, 140, 118)   % Right Leg
	drawfillbox (-175 + x, 122, -155 + x, 130, 118)   % Right Leg
	drawfillbox (-145 + x, 122, -135 + x, 140, 118)   % Left Leg
	drawfillbox (-145 + x, 122, -125 + x, 130, 118)   % Left Leg
	drawfillarc (-185 + x, 165, 20, 25, 90, 270, 118) % Tail
	drawfillbox (-185 + x, 170, -125 + x, 140, 118)   % Body

	%Triceratops
	drawfillbox (-336 + x, 121, -210 + x, 195, 18)    % Erase
	drawline (-215 + x, 180, -220 + x, 170, 0)        % Horn
	drawline (-215 + x, 180, -225 + x, 172, 0)        % Horn
	drawfillarc (-215 + x, 165, 40, 40, 135, 225, 54) % Head
	drawfillbox (-305 + x, 145, -250 + x, 185, 54)    % Body
	drawfillarc (-275 + x, 185, 30, 10, 0, 180, 54)   % Top Back
	drawfilloval (-235 + x, 170, 3, 3, 0)             % Eye
	drawfillarc (-305 + x, 185, 30, 30, 180, 270, 54) % Tail
	drawfillarc (-275 + x, 145, 30, 10, 180, 0, 54)   % Belly
	drawfillbox (-305 + x, 145, -295 + x, 122, 54)    % Left Leg
	drawfillbox (-255 + x, 145, -245 + x, 122, 54)    % Right Leg
	delay (5)
    end for
end allRight2

% This procedure displays the pterodactyl carrying the pterodactyl across the ocean, doing some zigzags along the way.
procedure flyBy
    for x : 0 .. 250
	%Brachiosaurus
	drawfillbox (-246 + x, 86, -150 + x, 210, 18)     % Erase
	drawfillbox (-190 + x, 210, -150 + x, 185, 121)   % Head
	drawline (-160 + x, 190, -150 + x, 190, 0)        % Mouth
	drawfillbox (-190 + x, 210, -170 + x, 110, 121)   % Neck
	drawfillbox (-170 + x, 110, -235 + x, 150, 121)   % Body
	drawfilloval (-180 + x, 200, 3, 3, 0)             % Eyes
	drawfillarc (-235 + x, 150, 10, 25, 90, 270, 121) % Tail
	drawfillbox (-190 + x, 87, -170 + x, 110, 121)    % Left Leg
	drawfillbox (-235 + x, 87, -215 + x, 110, 121)    % Right Leg

	%Ptero
	drawfillbox (-201 + x, 210, -79 + x, 265, 18)     % Erase
	drawfillarc (-80 + x, 230, 50, 50, 150, 180, 12)  % Head
	drawfilloval (-120 + x, 240, 3, 3, 0)             % Eye
	drawfillbox (-145 + x, 230, -190 + x, 210, 12)    % Body
	drawfillarc (-145 + x, 230, 15, 15, 270, 0, 12)   % Neck
	drawfillarc (-150 + x, 230, 30, 35, 90, 180, 12)  % Wings
	drawline (-155 + x, 230, -155 + x, 250, 7)        % Arm
	drawfillbox (-190 + x, 230, -200 + x, 225, 12)    % Top Leg
	drawfillbox (-190 + x, 220, -198 + x, 215, 12)    % Bottom Leg
	delay (5)
    end for

    for x : 0 .. 100
	%Brachiosaurus
	drawfillbox (4 + x, 86 + x, 100 + x, 210 + x, 18)    % Erase
	drawfillbox (60 + x, 210 + x, 100 + x, 185 + x, 121) % Head
	drawline (90 + x, 190 + x, 100 + x, 190 + x, 0)      % Mouth
	drawfillbox (60 + x, 210 + x, 80 + x, 110 + x, 121)  % Neck
	drawfillbox (80 + x, 110 + x, 15 + x, 150 + x, 121)  % Body
	drawfilloval (70 + x, 200 + x, 3, 3, 0)              % Eye
	drawfillarc (15 + x, 150 + x, 10, 25, 90, 270, 121)  % Tail
	drawfillbox (60 + x, 87 + x, 80 + x, 110 + x, 121)   % Left Leg
	drawfillbox (15 + x, 87 + x, 35 + x, 110 + x, 121)   % Right Leg

	%Ptero
	drawfillbox (49 + x, 210 + x, 171 + x, 270 + x, 18)   % Erase
	drawfillarc (170 + x, 230 + x, 50, 50, 150, 180, 12)  % Head
	drawfilloval (130 + x, 240 + x, 3, 3, 0)              % Eye
	drawfillbox (105 + x, 230 + x, 60 + x, 210 + x, 12)   % Body
	drawfillarc (105 + x, 230 + x, 15, 15, 270, 0, 12)    % Neck
	drawfillarc (100 + x, 230 + x, 30, 35, 90, 180, 12)   % Wings
	drawline (95 + x, 230 + x, 95 + x, 250 + x, 7)        % Arm
	drawfillbox (60 + x, 230 + x, 50 + x, 225 + x, 12)    % Top Leg
	drawfillbox (60 + x, 220 + x, 52 + x, 215 + x, 12)    % Bottom Leg
	delay (5)
    end for

    for x : 0 .. 100
	%Brachiosaurus
	drawfillbox (104 + x, 186 - x, 200 + x, 310 - x, 18)  % Erase
	drawfillbox (160 + x, 310 - x, 200 + x, 285 - x, 121) % Head
	drawline (190 + x, 290 - x, 200 + x, 290 - x, 0)      % Mouth
	drawfillbox (160 + x, 310 - x, 180 + x, 210 - x, 121) % Neck
	drawfillbox (180 + x, 210 - x, 115 + x, 250 - x, 121) % Body
	drawfilloval (170 + x, 300 - x, 3, 3, 0)              % Eye
	drawfillarc (115 + x, 250 - x, 10, 25, 90, 270, 121)  % Tail
	drawfillbox (160 + x, 187 - x, 180 + x, 210 - x, 121) % Left Leg
	drawfillbox (115 + x, 187 - x, 135 + x, 210 - x, 121) % Right Leg

	%Ptero
	drawfillbox (149 + x, 310 - x, 271 + x, 370 - x, 18) % Erase
	drawfillarc (270 + x, 330 - x, 50, 50, 150, 180, 12) % Head
	drawfilloval (230 + x, 340 - x, 3, 3, 0)             % Eye
	drawfillbox (205 + x, 330 - x, 160 + x, 310 - x, 12) % Body
	drawfillarc (205 + x, 330 - x, 15, 15, 270, 0, 12)   % Neck
	drawfillarc (200 + x, 330 - x, 30, 35, 90, 180, 12)  % Wings
	drawline (195 + x, 330 - x, 195 + x, 350 - x, 7)     % Arm
	drawfillbox (160 + x, 330 - x, 150 + x, 325 - x, 12) % Top Leg
	drawfillbox (160 + x, 320 - x, 152 + x, 315 - x, 12) % Bottom Leg
	delay (5)
    end for

    for x : 0 .. 350
	%Brachiosaurus
	drawfillbox (204 + x, 86 + x, 300 + x, 210 + x, 18)     % Erase
	drawfillbox (260 + x, 210 + x, 300 + x, 185 + x, 121)   % Head
	drawline (290 + x, 190 + x, 300 + x, 190 + x, 0)        % Mouth
	drawfillbox (260 + x, 210 + x, 280 + x, 110 + x, 121)   % Neck
	drawfillbox (280 + x, 110 + x, 215 + x, 150 + x, 121)   % Body
	drawfilloval (270 + x, 200 + x, 3, 3, 0)                % Eye
	drawfillarc (215 + x, 150 + x, 10, 25, 90, 270, 121)    % Tail
	drawfillbox (260 + x, 87 + x, 280 + x, 110 + x, 121)    % Left Leg
	drawfillbox (215 + x, 87 + x, 235 + x, 110 + x, 121)    % Right Leg

	%Ptero
	drawfillbox (249 + x, 210 + x, 371 + x, 270 + x, 18)   % Erase
	drawfillarc (370 + x, 230 + x, 50, 50, 150, 180, 12)   % Head
	drawfilloval (330 + x, 240 + x, 3, 3, 0)               % Eye
	drawfillbox (305 + x, 230 + x, 260 + x, 210 + x, 12)   % Body
	drawfillarc (305 + x, 230 + x, 15, 15, 270, 0, 12)     % Neck
	drawfillarc (300 + x, 230 + x, 30, 35, 90, 180, 12)    % Wings
	drawline (295 + x, 230 + x, 295 + x, 250 + x, 7)       % Arm
	drawfillbox (260 + x, 230 + x, 250 + x, 225 + x, 12)   % Top Leg
	drawfillbox (260 + x, 220 + x, 252 + x, 215 + x, 12)   % Bottom Leg
	delay (5)
    end for
end flyBy

% This procedure writes my name in the centre of the screen and plays some music.
procedure outro
    for x : 0 .. 640
	drawline (0 + x, 0, 0 + x, 70, 55)      % Water
	drawline (0 + x, 70, 0 + x, 400, 18)    % Sky
    end for

    locate (12, 36)
    put "Ryan Phan" ..

    play ("4eefggfedccdeed 2d 4eefggfedccdedccd 2d 4ecdefecdefedcd 2g 4eefggfedccdedc 2c") % Ode to Joy (As they escape for now...)
end outro

% Main Program
background      % Draws the initial background.
waterDino       % Enters the elasmosaurus from the right.
firstMoveRight  % Enters the t-rex, velociraptor, and the triceratops from the left.
moveUp          % Makes the above dinos "hop" onto the elasmosaurus.
pteroEnter      % Enters the pterodactyl from the left.
tallNeckEnter   % Enters the brachiosaurus from the left and makes it "hop" onto the pterodactyl.
allRight        % Moves all the dinos off screen
background2     % Draws the second background.
allRight2       % Moves the dinos on the elasmosaurus across the screen
flyBy           % Moves the pterodactyl and the brachiosaurus across the screen, flying in zigzags
outro           % My name and some music (Ode to Joy)
% End of Main Program
