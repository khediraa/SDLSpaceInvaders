.PHONY: clean All

All:
	@echo "----------Building project:[ SDLproject - Debug ]----------"
	@cd "SDLproject" && "$(MAKE)" -f  "SDLproject.mk" && "$(MAKE)" -f  "SDLproject.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ SDLproject - Debug ]----------"
	@cd "SDLproject" && "$(MAKE)" -f  "SDLproject.mk" clean
