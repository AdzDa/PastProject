/* Name		 : Adzrul D
   Matric No :
   Faculty   : Engineering
   School    : Mechanical Engineering(1SEMM)
   Course    : Programming for Engineers
   Course Code/Section: SEMM 1013/ 2
   		Individual Project
   		Title: E-Voting System */
   		
//#include <iostream>
#include<stdio.h>
#include<time.h>
#include<stdlib.h>
#include<string.h>
#include <unistd.h>

//___________________________________________________________________
	//Function
      void time_disp();    // time_disp= time display
	  void Pre_face();
	  void Cont_SignUp();
	  void login(char x[20],int y);
	  void Inter_face();
	  void User_Manual();
	  int Registration();
	  int Vote();
      int Results();	
	  void Objections();
	  
//____________________________________________________________________
	// Variable declaration(Global)
	//------------------------------------------------------------------
   		//time_disp() 
			struct tm time_check;
			time_t mytime;
	//------------------------------------------------------------------
	    //Pre_face()
			int option;
	//------------------------------------------------------------------
		//Cont_SignUp()
	    	char username[30];
			int signUp;
			int password;
	//------------------------------------------------------------------
  		//login(, )
			int result;
			char username_1[30];
			int password_1;
			char forg_pass;   // forg_pass= forget password
//________________________________________________________________________________________________________________________________________________________
int main(int argc, char** argv) 
{	time_disp() ;
	Pre_face()	;

	
	return 0; }
	
//________________________________________________________________________________________________________________________________________________________
void time_disp()
{	mytime = time(NULL);
	printf(ctime(&mytime)); }

//________________________________________________________________________________________________________________________________________________________
void Pre_face()	
{_1stPreface:
    printf("\n \t\t  Press 1 To Signup and Login");
    printf("\n \t\t  >> ");
    scanf("%d", &option);
    
    	if(option==1)
    	{sleep(1);
		 system("cls");
		 Cont_SignUp();	}
		 	
			else
			{printf("\n INVALID Input !! ");
			 goto _1stPreface; 	}}
	
//________________________________________________________________________________________________________________________________________________________		 
void Cont_SignUp()
{int close;
 sign_up:
 do
  {printf("\n 1. SIGN UP \n 2. QUIT ");
   printf("\n\n Enter Selection >> ");
   scanf("%d", &signUp);
   sleep(1);
   system("cls");
		
		if(signUp<1 || signUp>2)
		printf(" \n INVALID Input!! ");
			else if(signUp==1)
			 {printf("\n Please enter username >> ");
			 scanf(" %[^\n]s ",username);
			 printf("\n Please enter password (numbers only) >> ");
		 	 scanf("%d",&password);
				do
				{printf("\n LOADING.... ");
				 sleep(1);
		 		 system("cls");
				 login(username, password);	
				}while(password < 0);} 
													
		else
		 {printf("\n Are you sure want to QUIT ?");
         printf("\n 1. YES \n 2. NO\n");
		 printf("\n Enter >> ");
	 	 scanf("%d",&close);
			if(close==1)
			printf("\n\t\t YOU MAY CLOSE THE PROGRAM ");
				if(close==2)
				sleep(1);
				 system("cls");	
			 	 goto sign_up;}}
 while(signUp<1 || signUp>2);  }  

//________________________________________________________________________________________________________________________________________________________
void login(char x[20],int y)
{Login:
	 do
 	 {printf("\n username >> ");
	  scanf(" %[^\n]s ", &username_1);
 	  printf("\n password >> ");
	  scanf("%d", &password_1);
		
	  result=strcmp(username_1, x);
	  		
		if(result==0 && y==password_1)
		{printf("\n\n\n You've succesfully login");
		 Inter_face();}
			else
			{printf("\n Sorry username and password didn't match");
			 sleep(1);
			 system("cls");
			 printf("\n Do you forget your password ?? (Y)/(N) >> ");
			 scanf(" %c", &forg_pass);
			 		switch(forg_pass)
					{case 'Y':
				     case 'y':
					    Cont_SignUp();
				
					 case 'N':
					 case 'n':
				    	goto Login;} }
}while(result!=0 || y!=password);  } 

//________________________________________________________________________________________________________________________________________________________
void Inter_face()
{ int choice;

Interface_1:
	printf("\n\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 E-VOTING SYSTEM \xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n\n\t\t");
	printf("\n\n                                        ");
    printf("\n\n");
    printf(" \n\t\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n \t\t\t\t\t\t\t  1> User's Manual ");
    printf("\n \t\t\t\t\t\t\t  2> Registration ");
    printf("\n \t\t\t\t\t\t\t  3> Vote ");
	printf("\n \t\t\t\t\t\t\t  4> Results ");
	printf("\n \t\t\t\t\t\t\t  5> Objection");
    printf(" \n\t\t\t\t\t\t\t\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2\xB2 ");
    printf("\n\n");

		printf("\t\t\t\t\t\t\t Enter >> ");
		scanf(" %d", &choice);
		system("cls");
		
	if(choice>=1 || choice<=5)
		{if(choice==1)
		 User_Manual();
			else if(choice==2)
			Registration();
		  		else if(choice==3)
				Vote();
		  			else if(choice==4)
					Results();	
		  				else if(choice==5)
						Objections();	  } 
		else 
		{printf(" INVALID Input!!");
		 goto Interface_1;} }

//________________________________________________________________________________________________________________________________________________________
void User_Manual()
{ int Main_Menu;
  char singleLine[200];
  FILE *UM_file;
  
  UM_file = fopen("UserManual.txt", "r");
	
	while(!feof(UM_file))
	{fgets(singleLine, 200, UM_file);
	 puts(singleLine); 	}
	 
  fclose(UM_file); 
  
  printf("\n Main Menu(Press 1) >> ");
  scanf("%d", &Main_Menu);
  system("cls");
  
  	if (Main_Menu==1)
  	Inter_face(); 
		else
		printf("\n YOU MAY CLOSE THE PROGRAM");}
  
//_________________________________________________________________________________________________________________________________________________________
int Registration()
{ int num_cand, Main_Menu, i;   // num_cand=Number of Candidates
  char candidate[90];
  
  printf("\n **This System recommended only 2 until 6 candidates only** ");
  printf("\n Number of Candidates to be recorded >> ");
  scanf("%d",&num_cand);

  printf("\n **Use First Name only**");
 	FILE *Cand_Name;   // Cand_Name= Candidates' Name
 	 Cand_Name= fopen("CandidateName.txt","w");
 		 for(i=1; i<=num_cand; i++)
  	     {printf("\n Candidate [%d] >> ",i);
 		  scanf(" %s",candidate);  
 		  fprintf(Cand_Name, "\n%d >> %s", i,candidate);}
    fclose(Cand_Name);
  printf("File write was successful\n");

  printf("\n\n Main Menu(Press 1) >> ");
  scanf("%d", &Main_Menu);
  system("cls");
  
  	if (Main_Menu==1)
  	Inter_face(); 
		else
		printf("\n YOU MAY CLOSE THE PROGRAM");	 
  
  return 0;  }
  
//_________________________________________________________________________________________________________________________________________________________
int Vote()
{ int Main_Menu, est_tot_Bal;   // est_tot_Bal= Estimated Total Ballot
  int count[7]={0};
  int mark, i;
  char cont_next_Bal;   // cont_next_Bal= Continue Next Ballot
  char singleLine[200];

  printf("\n **VOTE FOR YOUR FUTURE**");
  FILE *Cand_Name;   // Cand_Name= Candidates' Name
  Cand_Name= fopen("CandidateName.txt","r");
  	while(!feof(Cand_Name))
	{fgets(singleLine, 200, Cand_Name);
	 puts(singleLine);	}
	 
  printf("\n ## Above are the Candidates with their serial number ##");
  
  printf("\n\nEnter the ESTIMATED TOTAL  Ballot >> ");
  scanf("%d",&est_tot_Bal);
  
    for(i=0; i<est_tot_Bal; i++)
    {   printf("\nEnter your Vote to candidate >> ");
        scanf("%d",&mark);
               
        if(mark==1)
        {++count[0];}
        	else if(mark==2)
        	{++count[1]; }
        		else if(mark==3)
        		{++count[2]; }
        			else if(mark==4)
        			{++count[3]; }
       					 else if(mark==5)
					     {++count[4]; }
					        else if(mark==6)
					    	{++count[5]; }
								else
        						{++count[6];  }  
	  system("cls"); }
    
    FILE *Bal_Results;   // Bal_Results= Ballot Results
 	Bal_Results= fopen("BallotResults.txt","w");    		
		for(i=0; i<est_tot_Bal; i++)
		{fprintf(Bal_Results, "\n Candidate %d >> %d", i,count[i]); }		
	 	 fprintf(Bal_Results, "\n Spoilt Ballot/ Absent voters >> %d",count[6]);
	fclose(Bal_Results);
    getch();
  
  fclose(Cand_Name);
  printf("\n Main Menu(Press 1) >> ");
  scanf("%d", &Main_Menu);
  system("cls");
  	
	if (Main_Menu==1)
  	Inter_face(); 
		else
		printf("\n YOU MAY CLOSE THE PROGRAM");	
}

//_________________________________________________________________________________________________________________________________________________________
int Results()
{ int Main_Menu;
  char singleLine[200];

  FILE *Bal_Results;   // Bal_Results= Ballot Results
  Bal_Results= fopen("BallotResults.txt","r");    
  	while(!feof(Bal_Results))
	{fgets(singleLine, 200, Bal_Results);
	 puts(singleLine); 	}
  printf("\n\n (Reminder)Consider the Serial Number of the candidates will be subtracted with 1");
  fclose(Bal_Results);

  printf("\n Main Menu(Press 1) >> ");
  scanf("%d", &Main_Menu);
  system("cls");
  
  	if (Main_Menu==1)
  	Inter_face(); 
		else
		printf("\n YOU MAY CLOSE THE PROGRAM");	 }
	  
//_________________________________________________________________________________________________________________________________________________________
void Objections()
{ int Main_Menu;

  printf("\n Sorry..This System is CLOSED for now!!"); 
  
  printf("\n Main Menu(Press 1) >> ");
  scanf("%d", &Main_Menu);
  system("cls");
  	
	if (Main_Menu==1)
  	Inter_face(); 
		else
		printf("\n YOU MAY CLOSE THE PROGRAM");  }
