nopop = true;

waitUntil {!isNull player};

TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
TrainingCourse_BulletCameraAbort = false;

player addaction [("<t color=""#CCAA44"">" + "Dráha Kulky" + "</t>"), "scripts\fnc_toggle_path_tracing.sqf", "", 0, false, false];
player addaction [("<t color=""#CCAA44"">" + "Sledování Kulky" + "</t>"), "scripts\fnc_toggle_bullet_camera.sqf", "", 0, false, false];

player addEventHandler ["fired", {_this execVM "scripts\fnc_bullet_camera.sqf"}];
player addEventHandler ["fired", {_this execVM "scripts\fnc_bullet_trace.sqf"}];