OPENSCAD = ~/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD

simple_models = thumb_wheel \
                mod_electronics_cover

SIMPLE_MODEL_TARGETS=$(patsubst %,STLs/%.stl,${simple_models})
TARGETS=${SIMPLE_MODEL_TARGETS}

.PHONY: all clean
all: ${TARGETS}

$(SIMPLE_MODEL_TARGETS): STLs/%.stl: models/%.scad
	${OPENSCAD} -o $@ $<

clean:
	rm -f ${TARGETS}
