//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/dev/dwmblocks/scripts/mic_icon.sh",	0,		10},
	{" \uefc5 ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{" \uf2db ", "~/dev/dwmblocks/scripts/cpu_usage.sh", 5, 0},
	{"", "date '+\uf017 %H:%M %A \uf073 %d/%m/%Y'",	5,		0},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
