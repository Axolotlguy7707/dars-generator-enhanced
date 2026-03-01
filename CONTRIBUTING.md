# contributing guidelines

## contents

- CODE OF CONDUCT
- LICENSING
	- code
	- icons
	- screenshots
- coding style
- commit titles and messages
	- line length
	- special characters
	- signatures

## CODE OF CONDUCT

- please be nice and respectful of each other
- please be polite
- please don't be aggressive
- please keep criticism constructive
- please act how is reasonable in a professional setting

if you don't follow the rules, you will:
- if first offense, get a warning
- if second offense or more, get banned temporarily or forever
	from this project

## LICENSING

### code

please make sure that all GDScripts in this Godot project
are licensed under
[MIT License](https://choosealicense.com/licenses/mit/).

please also start your GDScripts with this banner comment:
```GDScript
# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/dars-generator
```
and replace the MIT license link in line 2
with your own MIT license link.

if you want to introduce another programming language into this
Godot project, please first discuss it.

### icons

please license new icons under one of these licenses:
	- [Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/)
	- [Creative Commons Attribution](https://creativecommons.org/licenses/by/4.0/)
	- [MIT License](https://choosealicense.com/licenses/mit/)

and please add the license to the icon's Metadata

### screenshots

please make sure that all screenshots in this project are licensed under
[Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/).

## coding style

this project uses coding styles recommended in the Godot documentation,
especially
[GDScript style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html).

it also differs from Godot documentation's
recommended coding styles in 2 ways:
- line length limits are more ideal for smaller screens
	- the soft line length limit is at 72 characters (two nif)
	- the hard line length limit is at 108 characters (three nif)
	- you can set the line length limit guides in the
		Godot editor settings at
		**text_editor/appearance/guidelines/line_length_guideline_*_column**
- tabs are 3 spaces wide (more ideal for smaller screens)
	- you can set the tab width in the Godot editor settings at
	  **text_editor/behavior/indent/size**

## commit titles and messages

### line length

please limit every line in your commit titles and commit messages
to 72 (two nif) characters.
you can ensure this by resizing your terminal window
to be 72 (two nif) characters wide.

### special characters

please use the proper special characters
in commit messages and titles. some examples:

purpose          | usual special character | use this instead
-----------------|-------------------------|------------------------------
list item marker | ``-`` or ``*``          | U+2002 ``•`` bullet
right arrow      | ``->``                  | U+2192 ``→`` rightwards arrow
left arrow       | ``<-``                  | U+2190 ``←`` leftwards arrow
em dash          | ``-`` or ``--``         | U+2014 ``—`` em dash
en dash          | ``-``                   | U+2013 ``–`` en dash

### signatures

please sign your commits in one of these ways,
so your authorship doesn't get lost when rebasing:

> with your user link:
> 
> ```
> 	— <https://codeberg.org/sosasees>
> ```

> with your e-mail address:
> 
> ```
> 	— <mailto:sosasees@protonmail.com>
> ```

you can also type a nickname before the link if you want:

> ```
> 	— sosasees <https://codeberg.org/sosasees>
> ```
> or
> ```
> 	— sosasees <mailto:sosasees@protonmail.com>
> ```

please begin your signatures with the proper special characters:
1. (optional) U+0009 ``	`` [Tab] character tabulation
2. U+2014 ``—`` em dash
3. U+2020 `` `` [Space] space

you can copy-paste the special characters from the examples above.
