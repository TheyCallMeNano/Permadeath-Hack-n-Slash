///@desc Vars & Config
randomize();

//Controllers
global.gamePaused = false;
global.gameSaveSlot = 0;

//Player Vars
global.class = 0;
global.className = "";
global.plrHP = 100;
global.plrMaxStamina = 100;
global.plrStamina = 100;
global.plrStaminaRecharge = 0.5;
global.plrStaminaRechargeDelay = 0;
global.plrStaminaDelayTime = 120;
global.baseDMG = 15;

//Misc
global.iCamera = instance_create_layer(800,352,layer,objCamera);