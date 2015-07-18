CC  = gcc
FOR = gfortran
OFILES = catomain.o catomain_f.o

catomain : $(OFILES)
	$(CC) -o $@ $(OFILES) -lgfortran -lm 
.f.o :
	$(FOR) -c $< 
.c.o :
	$(CC) -c $<
clean :
	\rm -f $(OFILES)

