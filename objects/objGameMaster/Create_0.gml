///@desc Vars & Config
randomize();

//Controllers
global.gamePaused = false;

//Player Vars
global.class = 0;
global.className = "";
global.plrHP = 100;
global.plrMaxStamina = 100;
global.plrStamina = 100;
global.plrStaminaRecharge = 0.5;
global.plrStaminaRechargeDelay = 0;

//Misc
global.iCamera = instance_create_layer(800,352,layer,objCamera);