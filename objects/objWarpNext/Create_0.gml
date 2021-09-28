transitionTypeIn = sqFadein;
transitionTypeOut = sqFadeout;

transitionDice = irandom_range(0,100);

if transitionDice > 75 || transitionDice = 75
{
	transitionTypeIn = sqFadeinVariant;
	transitionTypeOut = sqFadeoutVariant;
}
else if transitionDice < 75
{
	transitionTypeIn = sqFadein;
	transitionTypeOut = sqFadeout;
}