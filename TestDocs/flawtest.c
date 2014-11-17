
/* Test flawfinder.  This program won't compile or run; that's not necessary
   for this to be a useful test. */

main() {
  char d[20];
  char s[20];
  int n;

  n = strlen(d);
  /* This is wrong, and should be flagged as risky: */
  MultiByteToWideChar(CP_ACP,0,szName,-1,wszUserName,sizeof(wszUserName));
  /* This is much better: */
  MultiByteToWideChar(CP_ACP,0,szName,-1,wszUserName,sizeof(wszUserName)/sizeof(wszUserName[0]));
}


