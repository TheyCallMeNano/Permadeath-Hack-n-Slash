/// @description 

if enemyCurrent != maxEnemies
{
	x = irandom_range(0,1360);
	y = irandom_range(0,768);
}


if enemySpawn > 75 && maxEnemies != enemyCurrent && !place_meeting(x,y,objNoSpawnZone)
{
	instance_create_layer(x,y,"Instances",objGoblin);
	enemyCurrent += 1;
}

enemySpawn = irandom_range(enemySpawnChanceMin,enemySpawnChanceMax);