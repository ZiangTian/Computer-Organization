void change(int a[9][9], int x,int y,int digit){
	a[x][y] = digit;
}
int checker(int a[9][9]){
	int hashrow[9][9], hashcol[9][9], hashgrid[9][9];
	for(int i=0;i<9;i++)
		for(int j=0;j<9;j++){
			hashrow[i][j]=0;
			hashcol[i][j]=0;
			hashgrid[i][j]=0;
		}
	for(int i=0;i<9;i++)
		for(int j=0;j<9;j++){
			int digit=a[i][j],g=(i/3)*3+(j/3);
			if(digit == 0) return 0; 
			if(hashrow[i][digit]) return 0;
			if(hashcol[j][digit]) return 0;
			if(hashcol[g][digit]) return 0;
			hashrow[i][digit] = 1;
			hashcol[j][digit] = 1;
			hashcol[g][digit] = 1;
		}
	return 1;
}
int main(){
	int a[9][9] = {{0,5,7,9,4,0,8,0,0},{2,0,4,0,0,0,1,9,6},{3,9,0,1,0,0,0,0,5},{0,3,1,0,0,0,2,0,0},{6,0,2,3,5,0,9,8,0},{5,0,0,2,0,7,0,0,0},{0,0,5,6,0,2,0,0,8},{7,6,0,0,1,5,0,0,9},{0,0,8,7,3,0,0,0,0}};
	change(a,1,1,1);
	int f = checker(a);
}