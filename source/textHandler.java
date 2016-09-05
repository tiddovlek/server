public class textHandler {
	public void startText(int ID) {
client c = (client) server.playerHandler.players[ID];
c.sendQuest(" ", 6399);
c.sendQuest("The Quest List", 640);
c.sendQuest("Quests", 663);
c.sendQuest("Level 94: Vengeance", 13097);
c.sendQuest("4 Skulls   10 Earths    2 Deaths", 13098);
c.sendQuest("@gre@0/0", 13101);
c.sendQuest("@gre@0/0", 13102);
c.sendQuest("Heal other", 12457);// Teleother Camelot
c.sendQuest("2 Bloods   4 Earths   4 Natures", 12458);
c.sendQuest("@gre@0/0", 12461);
c.sendQuest("@gre@0/0", 12462);
c.sendQuest("Energy Transfer", 12437);// Teleother Camelot
c.sendQuest("4 Cosmics   6 Bloods", 12438);
c.sendQuest("@gre@0/0", 12442);
c.sendQuest("@gre@0/0", 12443);
c.sendQuest("@gre@0/0", 12444);
c.sendQuest("         150 points", 16160);
if(c.bankPin != -1){
    c.sendQuest("@gre@Set", 15105);
}
if(c.bankPin == -1){
    c.sendQuest("@red@NONE", 15105);
}
c.sendFrame126("The Deposit Box", 7421);
c.sendQuest("Bank Pin", 14923);
c.sendQuest("", 15107);
c.sendQuest("Set Pin", 15078);
c.sendQuest("Delete Pin", 15082);
c.sendQuest("", 15107);
c.sendQuest("Set Pin", 15078);
c.sendQuest("Your Bank Account",5383);
c.sendQuest("",4439);
c.sendQuest("Pest control", 10361);
c.sendQuest("Current points:", 10378);
c.sendQuest("     @yel@Crazy PvP", 15950);//Title
c.sendQuest("", 15960);//Under Title
c.sendQuest("", 15959);//Beside ^
c.sendQuest("", 15961);//Beside ^
c.sendQuest("", 15955);//top line

if(c.playerRights > 1) {
c.sendQuest("      Coords:", 183);
c.sendQuest("@gre@X: @yel@"+c.absX+" @gre@Y: @yel@"+c.absY+"", 184);
} else {
c.sendQuest("", 183);
c.sendQuest("", 184);
}

if(c.playerRights > 1) {
		c.sendFrame126("     Height:", 148);
		c.sendFrame126(""+c.heightLevel+"", 149);
} else {
		c.sendFrame126("", 148);
		c.sendFrame126("", 149);
}

	}
} // ends textHandler