#include <stdio.h>
#include <string>

//#define TEST 1
#ifdef TEST
static int LEN = 1*1024*1024;
#else
static int LEN = 100*1024*1024;
#endif


int main(int argc, char **argv){
	long beg = 0;
	sscanf(argv[1], "%ld", &beg);
	printf("%ld\n", beg);

#ifndef TEST
	long end = 0;
	sscanf(argv[2], "%ld", &end);
	printf("%ld\n", end);
#endif
	
        FILE *fl = fopen("../log.txt", "rb");
        fseek(fl, 0, SEEK_END);
        long len = ftell(fl);
	{
		// haha,here put len=end
#ifndef TEST
		len = end;
#endif
	}

        char *buf = new char[LEN+1];
	buf[LEN+1] = 0;
#ifdef TEST
	fseek(fl, beg, SEEK_SET);
	fread(buf, 1, LEN, fl);
	printf("%s\n", buf);
	fclose(fl);
#else

	long pos = beg;
	FILE *fw = fopen("./m.txt", "wb");
        while(1){
                fseek(fl, pos, SEEK_SET);
                bool br = false;
                if(pos+LEN >= len){
                        LEN = len-pos-1;
                        br = true;
                }
                fread(buf, 1, LEN, fl);
                if(br){
                        //treateContent(lines);
                        fwrite(buf, 1, LEN, fw);
                        break;
                }
                //treateContent(content);
                fwrite(buf, 1, LEN, fw);
                pos += LEN;
                if(pos >= len){
                        break;
                }
        }
        fclose(fl);
	fclose(fw);
#endif
	return 0;
}
