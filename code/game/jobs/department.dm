/*
	Department Datums
	Currently only used for a non-shitcode way of having variable initial balances in department accounts
	in future, should be a holder for job datums
*/

/datum/department
	var/name = "unspecified department"	//Name may be shown in UIs, proper capitalisation
	var/id	= "department" //This should be one of the DEPARTMENT_XXX defines in __defines/jobs.dm
	var/account_number = 0
	var/account_pin
	var/account_initial_balance = 3500	//How much money this account starts off with
	var/list/jobs_in_department = list()

	//Must be one of the FUNDING_XXX defines in __defines/economy.dm
	var/funding_type = FUNDING_INTERNAL

	// With external, this is the name of an organisation
	var/funding_source = DEPARTMENT_COMMAND

	// Budget for misc department expenses, paid regardless of it being manned or not
	var/budget_base = 500

	// Budget for crew salaries. Summed up initial wages of department's personnel
	var/budget_personnel = 0


	// How much account failed to pay to employees. Used for emails
	var/total_debt = 0

/*************
	Command
**************/
/datum/department/command
	name = "Nadezhda Council"
	id = DEPARTMENT_COMMAND
	/*
	The command account is the ship account. It is the master account that retainer departments are paid from,
	and represents the Captain's wealth, assets and holdings

	For now, it is set to an effectively infinitely high amount which shouldn't run out in normal gameplay
	In future, we will implement largescale missions and research contracts to earn money, and then set it
	to a much lower starting value
	*/
	account_initial_balance = 50000
	funding_type = FUNDING_EXTERNAL


/*************
	Retainers
**************/
//These departments are paid out of ship funding
/datum/department/ironhammer
	name = "Marshal and Blackshield Division"
	id = DEPARTMENT_SECURITY
	funding_type = FUNDING_EXTERNAL
	account_initial_balance = 25000 //25k do to being state funded

/datum/department/technomancers
	name = "Artificer's Guild"
	id = DEPARTMENT_ENGINEERING
	funding_type = FUNDING_EXTERNAL
	account_initial_balance = 17500 //15k do to being state funded
	//A full crew GM + 4 adpets is 1700 an hour, takes 10~ hours to drain the department funds


/datum/department/civilian
	name = "Nadezhda Contractors"
	id = DEPARTMENT_CIVILIAN
	account_initial_balance = 0
	funding_type = FUNDING_EXTERNAL
	//No standing balance is kept in the account, this is just for paying gardener, janitor and actor


/******************
	Benefactors
*******************/
//Departments subsidised by an external organisation. These pay their own employees
/datum/department/moebius_medical
	name = "Soteria Institution: Medical Division"
	id = DEPARTMENT_MEDICAL
	account_initial_balance = 15000 //For buying medical and items and payments
	funding_type = FUNDING_EXTERNAL
	funding_source = "Soteria Institution."

/datum/department/moebius_research
	name = "Soteria Institution: Research Division"
	id = DEPARTMENT_SCIENCE
	account_initial_balance = 10000 //For buying materials and components and things of scientific value as well as pay the demanding staff
	funding_type = FUNDING_EXTERNAL
	funding_source = "Soteria Institution."

/datum/department/church
	name = "Church of Absolute"
	id = DEPARTMENT_CHURCH
	account_initial_balance = 25000 //Materals, and they are the faith, they donate and get a lot to the colony thus they have a lot to spend
	funding_type = FUNDING_EXTERNAL
	funding_source = "Church of Absolute"



/******************
	Independant
*******************/
//Self funds and pays wages out of its earnings
/datum/department/guild
	name = "Lonestar Shipping Solutions"
	id = DEPARTMENT_LSS

	/*
		The LSS account represents the holdings of the local branch, and CEO.
	*/
	/* if you want to change this remember to do so in code\game\gamemodes\score.dm as well,
	if you manage to get this variable refferenced there you're a better man than me. godspeed
	*/
	account_initial_balance = 25000 //has a lot of workers thus needs a higher starting to off-set its paychecks if no one actively runs the cargo shuttle
	funding_type = FUNDING_EXTERNAL //So we want to trade and make money not magiclly get it every hour

/datum/department/prospector
	name = "Prospectors"
	id = DEPARTMENT_PROSPECTOR
	account_initial_balance = 10000 //Has a lot of workers and people
	funding_type = FUNDING_NONE // Salaries won't be supported by an external source to encourage prospectors to loot and sell

/datum/department/independent
	name = "Independent Allied Factions"
	id = DEPARTMENT_INDEPENDENT
	funding_type = FUNDING_NONE
