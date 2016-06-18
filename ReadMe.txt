XL-FileTools
Description : Part of the XL-Toolkit, XL-FileTools provides a bunch of tools for 
			  files like listing, copying, moving, renaming, etc.
Author 		: Alain Rioux (admin@le-tools.com)
WebSite		: http://le-tools.com/XL-FileTools.html
GitHub		: https://github.com/arioux/XL-FileTools


What is it
----------

XL-FileTools provides a bunch of functions for files, grouped in three categories:
- Lists: 	  There are two types: list of folders and files and list of extensions. 
			  - List of files produces a tab of informations about files that can 
				include full path, filename, MD5 hash, SHA1 hash, Last accessed or 
				modified date and number of lines if it's a text file. 
			  - List of extensions enumerate and calculate the number of extensions 
				in a folder.
- Copy/Move:  Copy and move the selected folders and files. Duplicates (based on the 
			  MD5 hash) can be excluded. The most interesting thing about using 
			  XL-FileTools to copy or move files is filters. Filters can be used 
			  with any function, but copy and move would be worthless without it. 
			  You can filter by file size, last accessed or modified date, using 
			  a keyword or regex, etc.
- Rename:	  There are three types: By hash (MD5 or SHA1), By sort or Replace-By. 
			  - By hash simply renames file based on the calculated MD5 or SHA1 hash 
				value. Extension may be preserved or not.
			  - By sort applies a sort to a list of files before renaming them with an 
				incremental value. There a lot of options for type of sort and type of 
				incremental value. 
			  - Replace-By can be used on filename or folder name. You can use keyword 
				or regex.

Another interesting feature of XL-FileTools is preview mode. You can see what's gonna 
happen before doing it for real. See documentation for more details.


How it works
------------

XL-FileTools doesn't require any installation. In order to start using it, just 
run the executable file. 


What do you need
----------------

- Windows XP or newer


Versions History
----------------
* Version 1.0
	- First release.


Translation
-----------

To translate XL-FileTools to other languages:
1. 	In "Config" tab, use the "Export Lang.ini" function. The file will be 
	saved in the same directory of the tool;
2. 	Open the file in any text editor like Notepad;
3. 	Translate each expression at the right of the "=" symbol;
	-	The expression on the left side is used by the tool to identify the 
		expression 	so don't change it. Also, be sure to have a space between 
		the "=" symbol and your expression (ex. Key = Value);
	- 	Authorized characters are alphanumerics, spaces and these symbols: ",", 
		".", "-", "!", "'", "(" and ")". Any other character will be deleted;
	-	For some controls, String length must be the same as original. A longer 
		string could be truncated if it doesn't match the length of the field;
	- 	The value associated with the "translatorName" will be used in the 
		"About" window to identify you as translator (if you want). You can 
		also add your email or a short 	url (ex. YourName (youraddress@email.com));
4. 	Restart the tool so the strings in "Lang.ini" will be used instead of the 
	default language.

* If you translate the tool and you want to share, contact the author.

Available translations:
See Website for available translations.


Licence
-------

Copyright (C) 2016  Alain Rioux (le-tools.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.


Feedback
--------

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message at http://le-tools.com/about.php.


Credits
-------

For icons:

The main logo of XL-FileTools has been created by Saki (Alexandre Moore, 
http://sa-ki.deviantart.com/) and distributed on term of the GNU 
General Public License.

The icon used for Process button comes from Orb Icons by Taytel 
(http://taytel.deviantart.com/). This icon uses Linkware license.

Stop icon has been created by emey87 (Manuel Lopez, emey87.deviantart.com) 
and distributed on term of the CC Attribution-No Derivative 4.0 license.

The icon used for Preview button comes from Long Shadow iOS7 Icons by 
PelFusion (http://www.pelfusion.com). This icon uses Linkware license.

Documentation button icon has been created by Oxygen Team 
(http://www.oxygen-icons.org) and distributed on term of the GNU Lesser 
General Public License.

A lot of icons used for buttons come from the Blue Bits collection of 
Icojam (http://www.icojam.com/, licensed as "Public Domain") like config, 
about and open file.

The icon used for open folder button comes from Basic Icons by PixelMixer 
and is distributed as Freeware.

The Open folder in Explorer icon comes from Danish Royalty Free Icons 
by Jonas Rask Design (http://jonasraskdesign.com). This icon is 
distributed as Freeware.

The folder opened and folder closed in Preview window come from Silk Icons 
by FamFamFam (http://famfamfam.com/lab/icons/silk) and are distributed on 
term of the CC Attribution 4.0 License.

The file, warning and error icons used in Preview window come from Fugue 
Icons by Yusuke Kamiyamane (http://p.yusukekamiyamane.com) and are distributed 
on term of the CC Attribution 4.0 License.
