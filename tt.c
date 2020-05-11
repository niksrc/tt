#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char **argv) {
  char *line = NULL;
  size_t len = 0;
  ssize_t read;
  char *strtime;

  time_t now, utc_time;
  struct tm *gtm;
  while ((read = getline(&line, &len, stdin)) != -1) {
    now = time(NULL);
    gtm = gmtime(&now);
    strftime(strtime, 100, "%Y-%m-%dT%H:%M:%S%z ", gtm);
    printf("%s", strtime);
    puts(line);
  }

  return 0;
}
