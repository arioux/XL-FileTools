XL-FileTools
Description 	: Part of the XL-Toolkit, XL-FileTools provides a bunch of tools for 
				  files like listing, copying, moving, renaming, etc.
Author 			: Alain Rioux (admin@le-tools.com)
WebSite			: http://le-tools.com/XL-FileTools.html
SourceForge		: https://sourceforge.net/p/xl-filetools
GitHub			: https://github.com/arioux/XL-FileTools
Documentation	: http://le-tools.com/XL-FileToolsDoc.html


Development
-----------

XL-FileTools has been developped using ActivePerl 5.16.3 with the 
following modules installed:

- Win32-OLE (0.1711)
- Win32-API (v0.84)
- Win32-GUI (v1.11)
- Win32-Process (v0.16)
- Win32-DriveInfo (v0.06)
- Win32-UTCFileTime (v1.58)
- threads (v2.09)
- threads-shared (v1.52)
- Digest-MD5-File (v0.08)
- Digest-SHA1 (v2.13)
- Encode (v2.84)
- File-Copy-Recursive (v0.38)
- DateTime (v1.28)
- DateTime-TimeZone (v2.00)
- Time-Local (v1.2300)
- Text-Roman (v3.5)
- Excel-Writer-XLSX (v0.94)
- Spreadsheet-ParseExcel (v0.65)
- Spreadsheet-ParseExcel-Simple (v1.04)
- Spreadsheet-XLSX (v0.13)
- CAM-PDF (v1.60)
- Archive-Zip (v1.57)


To do
-----


Packaging
---------

Executable has been packaged using PerlApp v.9.2.1 (ActiveState). For 
alternative to PerlApp, see 
http://www.nicholassolutions.com/tutorials/perl-PAR.htm.

To avoid problem with Datetime at runtime, you must uninstall Alt-Module-Runtime-ButEUMM 
from your Perl installation.



