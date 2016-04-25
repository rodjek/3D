OPENSCAD = ~/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD

simple_models = thumb_wheel

SIMPLE_MODEL_TARGETS=$(patsubst %,%.stl,${simple_models})

STLs/$(SIMPLE_MODEL_TARGETS): STLs/%.stl: models/%.scad
	${OPENSCAD} -o $@ $<

TARGETS=$(patsubst %,STLs/%,${SIMPLE_MODEL_TARGETS})

.PHONY: all clean
all: ${TARGETS}

clean:
	rm -f ${TARGETS}
