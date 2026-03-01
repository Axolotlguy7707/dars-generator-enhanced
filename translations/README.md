# 'DARS generator' translations

## contents

- folder structure
- save format
- load format

## folder structure

translation IDs have a folder structure:
- hyphens (``-``) are used as 'filename' spaces (`` ``)
- underscores (``_``) are used as 'folder separator's (``/`` or ``¥``)

## save format

in LibreOffice Calc, save the transation file
in 'Text CSV (.csv)' format, with these settings:

### Field options

- Character set: ``Unicode (UTF-8)``
- Field delimiter: ``,``
- String delimiter: ``"``
- [X] Save cell content as shown
- [ ] Save cell formulas instead of calculated values
- [ ] Quote all text cells
- [ ] Fixed column width

## load format

in LibreOffice Calc, load the file with these settings:

### Import

- Character set: ``Unicode (UTF-8)``
- Language: Any
- From row: ``1``

### Separator Options

- ``Separated by``
	- [ ] Tab
	- [X] Comma
	- [ ] Semicolon
	- [ ] Space
	- [ ] Other:
	- [ ] Merge delimiters
	- [ ] Trim spaces
	- String delimiter: ``"``

### Other Options

- [ ] Format quoted field as text
- [ ] Detect special numbers
