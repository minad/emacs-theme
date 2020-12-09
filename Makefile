NAME:=chili-themes
VERSION:=$$(grep Version *.el | sed 's/.*: *//')
PKG:=$(NAME)-$(VERSION)

package:
	@mkdir $(PKG)
	@cp *.el $(PKG)
	@echo "(define-package \"$(NAME)\" \"$(VERSION)\" \"$(NAME)\")" > $(PKG)/$(NAME)-pkg.el
	@tar cvf $(PKG).tar $(PKG)
	@rm -rf $(PKG)
