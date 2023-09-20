/*Member's' name :
	1, Adzrul D
	2, Farah A
	3, Hafiz R
	4, Haziq K
Project: Computer Engineering (CSC 099)
Title: Event Management System(display)
Couse/Group Program Course : PI 009/ N9
Date of submission : 15 March 2018*/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include<conio.h>
#include<math.h>

//Signup and Login______________________________________________________________________________________
void signup();
void login(char x[20],int y);
int menuMasmed;
int menuHEP;
int menuHEA;
char forg_pass;
//______________________________________________________________________________________________________

//Categories____________________________________________________________________________________________
void HEP();
void HEA();
void Masmed();
//______________________________________________________________________________________________________


//MASMED________________________________________________________________________________________________
//Date_MASMED-------------------------------------------------------------------------------------------
int valid_date(int, int, int);
int yy, mm, dd; 
// a pointer to an array of strings
char *wday[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Unknown"};

//Time_MASMED--------------------------------------------------------------------------------------------
void GetTime(int [],int []);
int start[10], end[10], start1[10],end1[10],i;
	
void status(int);
void status1();
int status2(int display1[10]);
int a=0;
char _4[15]="Invalid Input";
char eventStat[10][15];
//_______________________________________________________________________________________________________

//HEA//___________________________________________________________________________________________
//Date_HEA----------------------------------------------------------------------------------------------
int valid_date_HEA(int, int, int);
int yy_HEA, mm_HEA, dd_HEA; 
// a pointer to an array of strings
char *wday_HEA[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Unknown"};

//Time-----------------------------------------------------------------------------------------------
void GetTime_HEA(int [],int []);
int start_HEA[10], end_HEA[10], start1_HEA[10],end1_HEA[10];
	
void status_HEA(int);
void status1_HEA();
int status2_HEA(int display1_HEA[10]);
int c=0;
char _4_HEA[15]="Invalid Input";
char eventStat_HEA[10][15];

//Status--------------------------------------------------------------------------------------------------
int k=0;
//____________________________________________________________________________________________________


//HEP____________________________________________________________________________________________________
//Date_HEP----------------------------------------------------------------------------------------------
int valid_date_HEP(int, int, int);
int yy_HEP, mm_HEP, dd_HEP; 
// a pointer to an array of strings
char *wday_HEP[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Unknown"};
int j;

//Time_HEP------------------------------------------------------------------------------------------------
void GetTime_HEP(int [],int []);
int start_HEP[10], end_HEP[10], start1_HEP[10],end1_HEP[10];
	
void status_HEP(int);
void status1_HEP();
int status2_HEP(int display1_HEP[10]);
int b=0;
char _4_HEP[15]="Invalid Input";
char eventStat_HEP[10][15];
//_________________________________________________________________________________________________________

//Display Function-----------------------------------------------------------------------------------------
void MASMED_disp();
void HEA_disp();
void HEP_disp();
//_________________________________________________________________________________________________________

//Additional Global Display--------------------------------------------------------------------------------
	char event_HEA[20][100];
	char venue_HEA[20][100];
	char timeStart_HEA[20][10];
	char timeEnd_HEA[20][10];
	char month_HEA[20][10];
	char day_HEA[20][10];
//	char status_HEA[20];
	
// structure data type
	struct tm time_check;
// normal data type
	int year_Hea, month_Hea, date_Hea;
	int k;
	int stat_HEA;
	int repeat;
	
	char _1_HEA[15]="On Going";
    char _2_HEA[15]="Cancelled"; 
	char _3_HEA[15]="Postponed";
    int c;
    
    	char event_HEP[20][100];
	char venue_HEP[20][100];
	char timeStart_HEP[20][10];
	char timeEnd_HEP[20][10];
	char month_HEP[20][10];
	char day_HEP[20][10];
//	char status_HEP[20];
	
// structure data type
	struct tm time_check;
// normal data type
	int year_Hep, month_Hep, date_Hep;
	int j;
	int stat_HEP;
	int numReg;
	
	char _1_HEP[15]="On Going";
    char _2_HEP[15]="Cancelled"; 
	char _3_HEP[15]="Postponed";
    int b;
    
    char eventMasmed[20][100];
	char venueMasmed[20][10];
	char timeStartMasmed[20][10];
	char timeEndMasmed[20][10];
	char monthMasmed[20][10];
	char dayMasmed[20][10];
//	char statusMasmed[20];

// structure data type
	struct tm time_check;
// normal data type
	int year, month, date;
	int i;
	int stat;
	int upBound;
	
	char _1[15]="On Going";
    char _2[15]="Cancelled"; 
	char _3[15]="Postponed";
    int a; 
//_________________________________________________________________________________________________________


//===============================================================================================================================================================
/*Author :  Haziq K
Function : -Asking user to continue with (signing up) the program*/
int main()
{
	int option1,option2;
   
    time_t mytime;
    mytime = time(NULL);
    printf(ctime(&mytime));
    
    Sign_up:
    printf("\n \t  Press 1 To Signup and Login");
    printf("\n \t  >> ");
    scanf("%d",&option1);
    
    	if(option1==1)
    	{
    		sleep(1);
			system("cls");
			signup();
		}
		
		else
		{
			printf("\n Invalid ");
			goto Sign_up;
		}
}
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author  : Farah A
Function  : -Main Interface
		    -Asking user to choose the category of event to be register   */
void registration() 
{
	int choice;
	int categories;
    
    welcome:
    sleep(1);
	system("cls");
    
    printf("\t\t\t\tXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
 	printf("\n\t\t\t\t*       *    *****   *       ****    ****     *     *   *****     *******     ***  ");
 	printf("\n\t\t\t\t*       *    *       *      *       *    *    * * * *   *            *      *     *");
 	printf("\n\t\t\t\t*   *   *    ****    *      *       *    *    *  *  *   ****         *      *     *"); 
 	printf("\n\t\t\t\t* *   * *    *       *      *       *    *    *     *   *            *      *     *");
 	printf("\n\t\t\t\t*       *    *****   *****   ****    ****     *     *   *****        *        ***  ");
 	printf("\n\t\t\t\tXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n");
 

	printf("\n\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 EVENT REGISTRATION SYSTEM \xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n\n\t\t");
	printf("\n\n                                        ");
    printf("\n\n");
    printf(" \n\t\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n \t\t\t\t\t\t\t  Press 1> Registration");
    printf("\n \t\t\t\t\t\t\t  Press 2> Display ");
    printf(" \n\t\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n\n");
//    printf("\t\t\t\t\t\t\t Select Your Choice >> ",choice);
        printf("\t\t\t\t\t\t\t      >> ");
    scanf("%d",&choice);
    sleep(1);
    system("cls");
    
    if(choice==1)
    {
    start :
    system("cls");
    printf("Please enter which category:");
    printf("\n\t ********************");
  	printf("\n\t | Categories | int |");
  	printf("\n\t ********************");
  	printf("\n\t | HEP        |  1  |");
  	printf("\n\t | HEA/ADMIN  |  2  |");
  	printf("\n\t | MASMED     |  3  |");
  	printf("\n\t ********************");
  	printf("\nSelect Your Category ::");
  	scanf("%d",&categories);
  	 
  	if(categories==1)
  	{
  		HEP(); 	
	}
	
	else if(categories==2)
	{
		HEA();
	}
	
	else if(categories==3)
	{
		Masmed();
	}
	
	else
	{
		printf("\n Error");
		goto start;
	}
    }
    
    else if(choice==2)
    { 
	   MASMED_disp();
       HEA_disp();
       HEP_disp();
	}
    
	else
    {
    printf("\nError occur, please register event/s.\n");
    goto welcome;
    }
    
    return 0;
 }
 
 
//===============================================================================================================================================================
/*Author :  Haziq K
Function : -Asking user to sign up first before using the program*/
void signup()
{
	char name[30];
	int x,y;
	int password;
	
	do
	{
	printf("\n LETS GET STARTED !!!! ");
	printf("\n 1. SIGN UP \n 2. QUIT ");
	printf("\n\n Please enter your selection >> ");
	scanf("%d",&x);
	sleep(1);
	system("cls");
		
	if(x<1 || x>2)
	{
	printf(" \n Invalid ");
	}
			
	else if(x==1)
	{
	printf("\n Please enter username >> ");
	scanf(" %[^\n]s ",name);
	printf("\n Please enter password (numbers only) >> ");
	scanf("%d",&password);
	do
	{	
		printf("\n WAIT FOR LOG IN !!! ");
		sleep(1);
		system("cls");
		login(name,password);
						
	}while(password<0);														
	}
	
	else
	{
		printf("\n Are you sure want to QUIT ?");
		printf("\n 1. YES \n 2. NO\n");
		printf("\n Your option : ");
		scanf("%d",&y);
				
	if(y==1)
	printf("\n\t\t YOU MAY CLOSE THE PROGRAM ");
	if(y==2)
	{
		sleep(1);
		system("cls");	
		main();
	}
	}
			
	}while(x<1 || x>2);
    
    
}

//Function : -User need to login after signing up as user
void login(char x[20],int y)
{
	int result;
	char username[30];
	int password;
	printf("\n LOGIN SESSION !!! LETS START \n\n");
	
	do
	{
		printf("\n username >> ");
		scanf(" %[^\n]s ",&username);
		printf("\n password >> ");
		scanf("%d",&password);
		
		result=strcmp(username,x);
		
		if(result==0 && y==password)
		{
			printf("\n\n\n You've succesfully login");
			registration();
		}
		else
		{
			printf("\n Sorry username and password didn't match");
			sleep(1);
			system("cls");
			printf("\n Do you forget your password ?? (Y)/(N) >> ");
			scanf(" %c", &forg_pass);
			switch(forg_pass)
			{
				case 'Y':
				case 'y':
					signup();
				
				case 'N':
				case 'n':
					continue;
			}
			
			
		}
	}while(result!=0 || y!=password);
	
}


//===============================================================================================================================================================
/*Author : -Adzrul D
		   -Hafiz R
function: -showing all function needed to be register(Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/
void HEA()
{
	
	printf("\n\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\Hal Ehwal Akademik(HEA) Registration\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\ ");
	char event_HEA[20][100];
	char venue_HEA[20][100];
	char timeStart_HEA[20][10];
	char timeEnd_HEA[20][10];
	char month_HEA[20][10];
	char day_HEA[20][10];
	int status_HEA[20];

	// structure data type
	struct tm time_check;
	// normal data type
	int year_Hea, month_Hea, date_Hea;
	int k;
	int stat_HEA;
	int repeat;
	
	printf("\n\nNumber of event(s) >>");
	scanf(" %d",&repeat);
		for(k=0;k<repeat;k++)
		{
		printf("\nEvent%d",k+1);
		printf("\n\n Enter the Event  >> ");
		scanf("  %[^\n]s",event_HEA[k]);
		
		printf("\n Enter the Venue  >> ");
		scanf("  %[^\n]s",venue_HEA[k]);
		
		// Input a year, month and day to find the weekday for...
		do{
		printf("\nEnter the year, month and day >>");
		printf("\n|Year format-YYYY, Month format-MM, Day format-DD|\n");
		printf("Year >> ");
		/* scanf("%d", &year); */
		scanf_s("%d", &year_Hea, 1);
		printf("Month >> ");
		scanf_s("%d", &month_Hea, 1);
		printf("Date >> ");
		scanf_s("%d", &date_Hea, 1);
		
		// load the time_check structure with the data
		time_check.tm_year = year_Hea - 1900;
		time_check.tm_mon = month_Hea - 1;
		time_check.tm_mday = date_Hea;
		time_check.tm_hour = 0;
		time_check.tm_min = 0;
		time_check.tm_sec = 1;
		time_check.tm_isdst = -1;
 
		// call mktime() function to fill in the weekday field of the structure...
		if(mktime(&time_check) == -1)
		time_check.tm_wday = 7;
 
		// print out the day of the week...
		printf("Day >> %s\n", wday[time_check.tm_wday]);
		printf("%s Date\n", valid_date(date_Hea, month_Hea, year_Hea) ? "Valid" : "Invalid");
		
		}while(valid_date(date_Hea,month_Hea,year_Hea) == 0);
		
    	status1_HEA();
    	do 
    	{
		printf("\n Choose the status of the event >> ");
  		scanf("%d", &status_HEA[c]);
    	stat_HEA=status2_HEA(status_HEA);
		}while(stat_HEA==0);
		
		do
		{
     	printf("\n Enter the start time : ");
		scanf("%d",&start_HEA[k]);
	
		printf("\n Enter the end time : ");
		scanf("%d",&end_HEA[k]);
		
		GetTime_HEA(start_HEA,end_HEA );
		}while(start_HEA[k]<800|| start_HEA[k]>2300 || end_HEA[k]<800 ||end_HEA[k]>2300);
		}
		
		system("pause");
		system("cls");
	
		printf("The Event(s) That You Have Entered\n");
		for(k=0;k<repeat;k++)
		{
		printf("\nEvent%d",k+1);
		printf("\nName of event >> %s",event_HEA[k]);
	
		printf("\nVenue of event : %s",venue_HEA[k]);

		printf("\nStatus of event >> %s ",eventStat_HEA[k]);
		
		if(start1_HEA[k]<1000 )
		{
		printf("\nTime of event is >> %04d - %d ",start_HEA[k], end_HEA[k]);
		}
		else if(end_HEA[k]<1000)
		{
		printf("\nTime of event is >> %d - %04d ",start_HEA[k], end_HEA[k]);	
		}
		else if(start_HEA[k]>=1200|| start_HEA[k]<=2300 || end_HEA[k]>=1200 ||end_HEA[k]<=2300)
		{
		printf("\nTime of event is >> %d - %d ",start_HEA[k], end_HEA[k]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date_Hea, month_Hea, year_Hea );
		}	
		printf("\nDo you want to return to main menu ?? [1=continue ]>> ");
		scanf("%d" ,&menuHEA);
		if(menuHEA==1)
		registration();
		else
			printf("**Thank you** ");
}

void status1_HEA()
{ printf("\n\t ********************");
  printf("\n\t | Status     | int |");
  printf("\n\t ********************");
  printf("\n\t | On going   |  1  |");
  printf("\n\t | Cancelled  |  2  |");
  printf("\n\t | Postponed  |  3  |");
  printf("\n\t ********************");
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D
 function: -Getting the input for the status of event have been chosen*/
int status2_HEA(int display1_HEA[k])
{ 
	char _1_HEA[15]="On Going";
    char _2_HEA[15]="Cancelled"; 
	char _3_HEA[15]="Postponed";
    int c;
    
   if(display1_HEA[k]==1)
   {
   printf("\n Status >> %s", _1_HEA); 
   strcpy(eventStat_HEA,_1_HEA);
   return 1;
   }
   else if (display1_HEA[k]==2)
   {
   printf("\n Status >> %s", _2_HEA); 
   strcpy(eventStat_HEA,_2_HEA);
   return 1;
   }
   else if (display1_HEA[k]==3)
   {
   printf("\n Status >> %s", _3_HEA);
   strcpy(eventStat_HEA,_3_HEA);
   return 1;
   }
   else
   {printf("\n %s !!", _4_HEA);
    return 0;
   } 		   
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D
 function: -validate the date entered
   		   -show the day of the date*/
int valid_date_HEA(int dd_HEA, int mm_HEA, int yy_HEA) 
{   
if (mm_HEA < 1 || mm_HEA > 12) 
	{  
	return 0;
  	}
    if (dd_HEA < 1) 
	{ 
	return 0;   
	}

    int days_HEA = 31;
    if (mm_HEA == 2) 
	{   
		if (yy_HEA % 4== 0) // || (yy % 4 == 0 && yy % 100 != 0))
		{ 
		 	if (yy_HEA%100==0)
			if(yy_HEA%400==0)
			days_HEA = 29;  
			else
			days_HEA = 28;
		}
	else
	days_HEA = 28; 
	}
	else if (mm_HEA == 4 || mm_HEA == 6 || mm_HEA == 9 || mm_HEA == 11)
    {
	days_HEA = 30;
	}
	else if (mm_HEA==1 || mm_HEA==3 || mm_HEA==5 || mm_HEA== 7 || mm_HEA==8 || mm_HEA==12)
	{ 
	days_HEA= 31;
 	}
    if (dd_HEA > days_HEA) 
	{  
	return 0;
    }
    return 1;
	}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------	
/*Author :  Haziq K 
Function : -Validate the Time entered by the user*/
void GetTime_HEA(int start1_HEA[], int end1_HEA[])
{
	int k;
	if(start1_HEA[k]<800 || start1_HEA[k]>2300)
	{
		if(end1_HEA[k]<800 ||end1_HEA[k]>2300)
		{
		printf("\n Invalid !! please re-enter the time\n");
		}
			
		else if(end1_HEA[k]>=800 || end1_HEA[k]<=2300)
		{
		printf("\n Invalid !! please re-enter the time\n");
		}
	}
		
	else if(start1_HEA[k]>=800 || start1_HEA[k]<=2300)
	{
		if(end1_HEA[k]<800 || end1_HEA[k]>2300)
		{
		printf("\n Invalid !! please re-enter the time\n");
		}
		else
		{
		printf("\n Valid\n");
		}
	}
	else
	{
		printf("\n Valid\n");
	}
	printf("\n");
}
//===============================================================================================================================================================



//===============================================================================================================================================================
/*Author : -Adzrul D 
		   -Hafiz R  
function: -showing all function needed to be register(Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/
void HEP()
{
	printf("\n\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\Hal Ehwal Pelajar(HEP) Registration\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\ ");
	char event_HEP[20][100];
	char venue_HEP[20][100];
	char timeStart_HEP[20][10];
	char timeEnd_HEP[20][10];
	char month_HEP[20][10];
	char day_HEP[20][10];
	int status_HEP[20];

	// structure data type
	struct tm time_check;
	// normal data type
	int year_Hep, month_Hep, date_Hep;
	int j;
	int stat_HEP;
	int numReg;
	
	printf("\nNumber of event(s) >>");
	scanf(" %d",&numReg);
		for(j=0;j<numReg;j++)
		{
		printf("\nEvent%d",j+1);
		printf("\n\n Enter the Event  >> ");
		scanf("  %[^\n]s",event_HEP[j]);
		
		printf("\n Enter the Venue  >> ");
		scanf("  %[^\n]s",venue_HEP[j]);
		
		// Input a year, month and day to find the weekday for...
		do{
		printf("\nEnter the year, month and day >>");
		printf("\n|Year format-YYYY, Month format-MM, Day format-DD|\n");
		printf("Year >> ");
		/* scanf("%d", &year); */
		scanf_s("%d", &year_Hep, 1);
		printf("Month >> ");
		scanf_s("%d", &month_Hep, 1);
		printf("Date >> ");
		scanf_s("%d", &date_Hep, 1);
		
		// load the time_check structure with the data
		time_check.tm_year = year_Hep - 1900;
		time_check.tm_mon = month_Hep - 1;
		time_check.tm_mday = date_Hep;
		time_check.tm_hour = 0;
		time_check.tm_min = 0;
		time_check.tm_sec = 1;
		time_check.tm_isdst = -1;
 
		// call mktime() function to fill in the weekday field of the structure...
		if(mktime(&time_check) == -1)
		time_check.tm_wday = 7;
 
		// print out the day of the week...
		printf("Day >> %s\n", wday[time_check.tm_wday]);
		printf("%s Date\n", valid_date_HEP(date_Hep, month_Hep, year_Hep) ? "Valid" : "Invalid");
		
		}while(valid_date_HEP(date_Hep,month_Hep,year_Hep) == 0);
		
    	status1_HEP();
    	do 
    	{
		printf("\n Choose the status of the event >> ");
  		scanf("%d", &status_HEP[b]);
    	stat_HEP=status2_HEP(status_HEP);
		}while(stat_HEP==0);
		
		do
		{
     	printf("\n Enter the start time : ");
		scanf("%d",&start_HEP[j]);
	
		printf("\n Enter the end time : ");
		scanf("%d",&end_HEP[j]);
		
		GetTime_HEP(start_HEP,end_HEP );
		}while(start_HEP[j]<800|| start_HEP[j]>2300 || end_HEP[j]<800 ||end_HEP[j]>2300);
		}
	
		system("pause");
		system("cls");
	
		printf("The Event(s) That You Have Entered\n");
		for(j=0;j<numReg;j++)
		{
		printf("\nEvent%d",j+1);
		printf("\nName of event >> %s",event_HEP[j]);
	
		printf("\nVenue of event >> %s",venue_HEP[j]);

		printf("\nStatus of event >> %s ",eventStat_HEP[j]);
		
		if(start1_HEP[j]<1000 )
		{
		printf("\nTime of event  >> %04d - %d ",start_HEP[j], end_HEP[j]);
		}
		else if(end_HEP[j]<1000)
		{
		printf("\nTime of event >> %d - %04d ",start_HEP[j], end_HEP[j]);	
		}
		else if(start_HEP[j]>=1200|| start_HEP[j]<=2300 || end_HEP[j]>=1200 ||end_HEP[j]<=2300)
		{
		printf("\nTime of event >> %d - %d ",start_HEP[j], end_HEP[j]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date_Hep, month_Hep, year_Hep );
		}	
		printf("\nDo you want to return to main menu ?? [1=continue ]>> ");
		scanf("%d" ,&menuHEP);
		if(menuHEP==1)
		 registration();
		else
			printf("**Thank you** ");
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D 
 function: -display the status of event the user can choose*/
void status1_HEP()
{ printf("\n\t ********************");
  printf("\n\t | Status     | int |");
  printf("\n\t ********************");
  printf("\n\t | On going   |  1  |");
  printf("\n\t | Cancelled  |  2  |");
  printf("\n\t | Postponed  |  3  |");
  printf("\n\t ********************");
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D
 function: -Getting the input for the status of event have been chosen*/
int status2_HEP(int display1_HEP[b])
{ 
	char _1_HEP[15]="On Going";
    char _2_HEP[15]="Cancelled"; 
	char _3_HEP[15]="Postponed";
    int b;
    
   if(display1_HEP[b]==1)
   {
   printf("\n Status >> %s", _1_HEP); 
   strcpy(eventStat_HEP, _1_HEP);
   return 1;
   }
   else if (display1_HEP[b]==2)
   {
   printf("\n Status >> %s", _2_HEP); 
   strcpy(eventStat_HEP, _2_HEP);
   return 1;
   }
   else if (display1_HEP[b]==3)
   {
   printf("\n Status >> %s", _3_HEP);
   strcpy(eventStat_HEP, _3_HEP);
   return 1;
   }
   else
   {printf("\n %s !!", _4_HEP);
    return 0;
   } 		   
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D  
 function: -validate the date entered
   		   -show the day of the date*/
int valid_date_HEP(int dd_HEP, int mm_HEP, int yy_HEP) 
{   
if (mm_HEP < 1 || mm_HEP > 12) 
	{  
	return 0;
  	}
    if (dd_HEP < 1) 
	{ 
	return 0;   
	}

    int days_HEP = 31;
    if (mm_HEP == 2) 
	{   
		if (yy_HEP % 4== 0) // || (yy % 4 == 0 && yy % 100 != 0))
		{ 
		 	if (yy_HEP%100==0)
			if(yy_HEP%400==0)
			days_HEP = 29;  
			else
			days_HEP=28;
		}
	else
	days_HEP = 28; 
	}
	else if (mm_HEP == 4 || mm_HEP == 6 || mm_HEP == 9 || mm_HEP == 11)
    {
	days_HEP = 30;
	}
	else if (mm_HEP==1 || mm_HEP==3 || mm_HEP==5 || mm_HEP== 7 || mm_HEP==8 || mm_HEP==12)
	{ 
	days_HEP= 31;
 	}
    if (dd_HEP > days_HEP) 
	{  
	return 0;
    }
    return 1;
	}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author :  Haziq K
Function : -Validate the Time entered by the user*/	
void GetTime_HEP(int start1_HEP[], int end1_HEP[])
{
	if(start1_HEP[j]<800 || start1_HEP[j]>2300)
	{
		if(end1_HEP[j]<800 ||end1_HEP[j]>2300)
		{
		printf("\n Invalid !!  Please re-enter the time\n");
		}
			
		else if(end1_HEP[j]>=800 || end1_HEP[j]<=2300)
		{
		printf("\n Invalid !!  Please re-enter the time\n");
		}
	}
		
	else if(start1_HEP[j]>=800 || start1_HEP[j]<=2300)
	{
		if(end1_HEP[j]<800 || end1_HEP[j]>2300)
		{
		printf("\n Invalid !! Please re-enter the time\n");
		}
		else
		{
		printf("\n Valid\n");
		}
	}
	else
	{
		printf("\n Valid\n");
	}
	printf("\n");
}
//===============================================================================================================================================================



//===============================================================================================================================================================
/*Author : -Adzrul D  
		   -Hafiz R  
function: -showing all function needed to be register(Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/
void Masmed()
{
	printf("\n\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\You've enter for the Masmed registration\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\ ");
	char eventMasmed[20][100];
	char venueMasmed[20][10];
	char timeStartMasmed[20][10];
	char timeEndMasmed[20][10];
	char monthMasmed[20][10];
	char dayMasmed[20][10];
	int statusMasmed[20];

	// structure data type
	struct tm time_check;
	// normal data type
	int year, month, date;
	int i;
	int stat;
	int upBound;
	
	printf("\nNumber of event(s) >>");
	scanf(" %d",&upBound);
		for(i=0;i<upBound;i++)
		{
		printf("\nEvent%d",i+1);
		printf("\n\n Enter the Event  >> ");
		scanf("  %[^\n]s",eventMasmed[i]);
		
		printf("\n Enter the Venue  >> ");
		scanf("  %[^\n]s",venueMasmed[i]);
		
		// Input a year, month and day to find the weekday for...
		do{
		printf("\nEnter any year, month and day >>");
		printf("\n|Year format-YYYY, Month format-MM, Day format-DD|\n");
		printf("Year: ");
		/* scanf("%d", &year); */
		scanf_s("%d", &year, 1);
		printf("Month: ");
		scanf_s("%d", &month, 1);
		printf("Date: ");
		scanf_s("%d", &date, 1);
		
		// load the time_check structure with the data
		time_check.tm_year = year - 1900;
		time_check.tm_mon = month - 1;
		time_check.tm_mday = date;
		time_check.tm_hour = 0;
		time_check.tm_min = 0;
		time_check.tm_sec = 1;
		time_check.tm_isdst = -1;
 
		// call mktime() function to fill in the weekday field of the structure...
		if(mktime(&time_check) == -1)
		time_check.tm_wday = 7;
 
		// print out the day of the week...
		printf("The day is %s\n", wday[time_check.tm_wday]);
		printf("%s Date\n", valid_date(date, month, year) ? "Valid" : "Invalid");
		
		}while(valid_date(date,month,year) == 0);
		
    	status1();
    	do 
    	{
		printf("\n Choose the status of the event >> ");
  		scanf("%d", &statusMasmed[a]);
    	stat=status2(statusMasmed);
		}while(stat==0);
		
		do
		{
     	printf("\n enter your start time : ");
		scanf("%d",&start[i]);
	
		printf("\n enter end time : ");
		scanf("%d",&end[i]);
		
		GetTime(start,end );
		}while(start[i]<800|| start[i]>2300 || end[i]<800 ||end[i]>2300);	
		}
		system("pause");
		system("cls");
	
		printf("The Event(s) That You Have Entered\n");
		for(i=0;i<upBound;i++)
		{
		printf("\nEvent%d",i+1);
		printf("\nName of event : %s",eventMasmed[i]);
	
		printf("\nVenue of event : %s",venueMasmed[i]);

		printf("\nStatus of event : %s ",eventStat[i]);
		
		if(start1[i]<1000 )
		{
		printf("\nTime of event is : %04d - %d ",start[i], end[i]);
		}
		else if(end[i]<1000)
		{
		printf("\nTime of event is : %d - %04d ",start[i], end[i]);	
		}
		else if(start[i]>=1200|| start[i]<=2300 || end[i]>=1200 ||end[i]<=2300)
		{
		printf("\nTime of event is : %d - %d ",start[i], end[i]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date, month, year );
		
		}	
		printf("\nDo you want to return to main menu ?? [1=continue ]>> ");
		scanf("%d" ,&menuMasmed);
		if(menuMasmed==1)
		registration();
		else
			printf("**Thank you** ");
			
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D 
 function: -display the status of event the user can choose*/
void status1()
{ printf("\n\t ********************");
  printf("\n\t | Status     | int |");
  printf("\n\t ********************");
  printf("\n\t | On going   |  1  |");
  printf("\n\t | Cancelled  |  2  |");
  printf("\n\t | Postponed  |  3  |");
  printf("\n\t ********************");
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D  
 function: -Getting the input for the status of event have been chosen*/
int status2(int display1[a])
{ 
	char _1[15]="On Going";
    char _2[15]="Cancelled"; 
	char _3[15]="Postponed";
    int a;
    
   if(display1[a]==1)
   {
   printf("\n Status >> %s", _1); 
   strcpy(eventStat,_1);
   return 1;
   }
   else if (display1[a]==2)
   {
   printf("\n Status >> %s", _2); 
   strcpy(eventStat,_2);
   return 1;
   }
   else if (display1[a]==3)
   {
   printf("\n Status >> %s", _3);
   strcpy(eventStat,_3);
   return 1;
   }
   else
   {printf("\n %s !!", _4);
    return 0;
   } 		   
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author : -Adzrul D 
 function: -validate the date entered
   		   -show the day of the date*/
int valid_date(int dd, int mm, int yy) 
{   
if (mm < 1 || mm > 12) 
	{  
	return 0;
  	}
    if (dd < 1) 
	{ 
	return 0;   
	}

    int days = 31;
    if (mm == 2) 
	{   
		if (yy % 4== 0) // || (yy % 4 == 0 && yy % 100 != 0))
		{ 
		 	if (yy%100==0)
			if(yy%400==0)
			days = 29;  
			else
			days=28;
		}
	else
	days = 28; 
	}
	else if (mm == 4 || mm == 6 || mm == 9 || mm == 11)
    {
	days = 30;
	}
	else if (mm==1 || mm==3 || mm==5 || mm== 7 || mm==8 || mm==12)
	{ 
	days= 31;
 	}
    if (dd > days) 
	{  
	return 0;
    }
    return 1;
	}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Author :  Haziq K
Function : -Validate the Time entered by the user*/	
void GetTime(int start1[], int end1[])
{
	if(start1[i]<800 || start1[i]>2300)
	{
		if(end1[i]<800 ||end1[i]>2300)
		{
		printf("\n invalid . please re-enter ur time\n");
		}
			
		else if(end1[i]>=800 || end1[i]<=2300)
		{
		printf("\n invalid. please re-enter ur time\n");
		}
	}
		
	else if(start1[i]>=800 || start1[i]<=2300)
	{
		if(end1[i]<800 || end1[i]>2300)
		{
		printf("\n invalid . please re-enter ur time\n");
		}
		else
		{
		printf("\n valid\n");
		}
	}
	else
	{
		printf("\n valid\n");
	}
	printf("\n");
}	
//=============================================================================================================================================================	
/*Author : -Adzrul D  
		   -Hafiz R  
function: -showing all the events that have been entered by the user (Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/
void HEP_disp()
{
	for(j=0;j<numReg;j++)
	{
		printf("\nEvent%d",j+1);
		printf("\nName of event >> %s",event_HEP[j]);
	
		printf("\nVenue of event >> %s",venue_HEP[j]);

		printf("\nStatus of event >> %s ",eventStat_HEP[j]);
		
		if(start1_HEP[j]<1000)
		{
		printf("\nTime of event  >> %04d - %d ",start_HEP[j], end_HEP[j]);
		}
		else if(end_HEP[j]<1000)
		{
		printf("\nTime of event >> %d - %04d ",start_HEP[j], end_HEP[j]);	
		}
		else if(start_HEP[j]>=1200|| start_HEP[j]<=2300 || end_HEP[j]>=1200 ||end_HEP[j]<=2300)
		{
		printf("\nTime of event >> %d - %d ",start_HEP[j], end_HEP[j]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date_Hep, month_Hep, year_Hep );
		}	
	}
	
/*Author : -Adzrul D 
		   -Hafiz R 
function: -showing all the events that have been entered by the user (Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/	
void HEA_disp()
{
	for(k=0;k<repeat;k++)
	{
		printf("\nEvent%d",k+1);
		printf("\nName of event >> %s",event_HEA[k]);
	
		printf("\nVenue of event : %s",venue_HEA[k]);

		printf("\nStatus of event >> %s ",eventStat_HEA[k]);
		
		if(start1_HEA[i]<1000 )
		{
		printf("\nTime of event is >> %04d - %d ",start_HEA[k], end_HEA[k]);
		}
		else if(end_HEA[i]<1000)
		{
		printf("\nTime of event is >> %d - %04d ",start_HEA[k], end_HEA[k]);	
		}
		else if(start_HEA[k]>=1200|| start_HEA[k]<=2300 || end_HEA[k]>=1200 ||end_HEA[k]<=2300)
		{
		printf("\nTime of event is >> %d - %d ",start_HEA[i], end_HEA[i]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date_Hea, month_Hea, year_Hea );
	}	
}
	
/*Author : -Adzrul D
		   -Hafiz R
function: -showing all the events that have been entered by the user (Name of event, time, venue, status & date)
		  -Similarly use for all categories(HEA/ HEP/ MASMED)*/
void MASMED_disp()
{
	for(i=0;i<upBound;i++)
	{
		printf("\nEvent%d",i+1);
		printf("\nName of event : %s",eventMasmed[i]);
	
		printf("\nVenue of event : %s",venueMasmed[i]);

		printf("\nStatus of event : %s ",eventStat[i]);
		
		if(start1[i]<1000 )
		{
		printf("\nTime of event is : %04d - %d ",start[i], end[i]);
		}
		else if(end[i]<1000)
		{
		printf("\nTime of event is : %d - %04d ",start[i], end[i]);	
		}
		else if(start[i]>=1200|| start[i]<=2300 || end[i]>=1200 ||end[i]<=2300)
		{
		printf("\nTime of event is : %d - %d ",start[i], end[i]);	
		}	
		printf("\n Date >> %d/ %d/ %d", date, month, year );
	}
}


