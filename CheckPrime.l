%option main
%{
	#include <math.h>
	int i, n, isPrime;
%}

%%
	printf("Enter a number: ");
	scanf("%d", &n);

	if (n <= 1)
	{
		printf("It's not a prime number.\n");
	} 
	else
	{
		isPrime = 1;
		for(i=2; i<=sqrt(n); i++)
		{
			if(n%i==0)
			{
				isPrime=0;
				break;
			}
		}

		if(isPrime)
		{
			printf("It's a prime number.\n");
		}
		else
		{
			printf("It's not a prime number.\n");
		}
	}
%%