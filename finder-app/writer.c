#include <stdio.h>
#include <errno.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
   FILE *fp;
 
   openlog(NULL, 0, LOG_USER);

   if( argc != 3 )
   {
      syslog(LOG_ERR, "Usage: %s <filename> <string>\n", argv[0]);
      return 1;
   }


   if( (fp = fopen(argv[1], "w")) == NULL )
   {
      syslog(LOG_ERR, "Error opening file, errno %d\n", errno);
      return 1;
   }

   if( fputs(argv[2], fp) < 0)
   {
      syslog(LOG_ERR, "Error opening file, errno %d\n", errno);
      return -1;
   }

   return 0;
}
