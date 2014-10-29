CPP         = g++

.PHONY : clean

OBJECTS = $(patsubst %.cpp, %.o,$(wildcard *.cpp))

ifdef TPLS
TPL_LOC := $(TPLS)
else
TPL_LOC := TPLs
endif

CPPFLAGS := -I $(TPL_LOC)
LINKFLAGS := -L $(TPL_LOC)/prototype_external

program: $(OBJECTS) lib
	$(CPP) $(LINKFLAGS) $(OBJECTS) -o program -ldependency

lib:
	cd $(TPL_LOC)/prototype_external && make

$(OBJECTS): %.o: %.cpp *.hpp
	$(CPP) -c $(CPPFLAGS) $< -o $@
	-@echo

clean:
	-@rm -f *.o *~ program
