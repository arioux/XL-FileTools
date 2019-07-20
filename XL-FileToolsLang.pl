#!/usr/bin/perl
# Perl - v: 5.16.3
#------------------------------------------------------------------------------#
# XL-FileToolsLang.pl : Strings for XL-FileTools
# Website             : http://le-tools.com/XL-FileTools.html
# SourceForge         : https://sourceforge.net/p/xl-filetools
# GitHub              : https://github.com/arioux/XL-FileTools
# Creation            : 2016-05-15
# Modified            : 2019-07-20
# Author              : Alain Rioux (admin@le-tools.com)
#
# Copyright (C) 2016-2019  Alain Rioux (le-tools.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Modules
#------------------------------------------------------------------------------#
use strict;
use warnings;

#------------------------------------------------------------------------------#
sub loadStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my ($refSTR, $LANG_FILE) = @_;
  # Open and load string values
  open(LANG, "<:encoding(UTF-8)", $LANG_FILE);
  my @tab = <LANG>;
  close(LANG);
  # Store values  
  foreach (@tab) {
    chomp($_);
    s/[^\w\=\s\.\!\,\-\)\(\']//g;
    my ($key, $value) = split(/ = /, $_);
    $value            = encode('cp1252', $value); # Encode
    $$refSTR{$key}    = $value if $key;
  }
  
}  #--- End loadStr

#------------------------------------------------------------------------------#
sub loadDefaultStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my $refSTR = shift;
  
  # Set default strings
  
  # General strings
  $$refSTR{'Error'}              = 'Error';
  $$refSTR{'errorMsg'}           = 'Error messsage';
  $$refSTR{'errorConnection'}    = 'Connection error';
  $$refSTR{'errorOpening'}       = 'Error opening';
  $$refSTR{'processRunning'}     = 'A process is already running. Wait until it stops or restart the program.';
  $$refSTR{'Smaller'}            = 'Smaller than';
  $$refSTR{'Equal'}              = 'Equal';
  $$refSTR{'Bigger'}             = 'Bigger than';
  $$refSTR{'b'}                  = 'Bytes';
  $$refSTR{'Kb'}                 = 'Kbytes';
  $$refSTR{'Mb'}                 = 'Mbytes';
  $$refSTR{'Gb'}                 = 'Gbytes';
  $$refSTR{'b2'}                 = 'b';
  $$refSTR{'Kb2'}                = 'Kb';
  $$refSTR{'Mb2'}                = 'Mb';
  $$refSTR{'Gb2'}                = 'Gb';
  $$refSTR{'Before'}             = 'Before';
  $$refSTR{'After'}              = 'After';
  $$refSTR{'Options'}            = 'Options';
  $$refSTR{'report'}             = 'report';
  $$refSTR{'selFile'}            = 'Select a file';
  $$refSTR{'selDir'}             = 'Select a folder';
  $$refSTR{'selFiles'}           = 'Select one or multiple files';
  $$refSTR{'selDirReport'}       = 'Select a folder for the report';
  $$refSTR{'selDirDst'}          = 'Select a destination folder';
  $$refSTR{'Extension'}          = 'Extension';
  $$refSTR{'Count'}              = 'Count';
  $$refSTR{'Counting'}           = 'Counting...';
  $$refSTR{'CountDupl'}          = 'Count duplicates';
  $$refSTR{'ListingFile'}        = 'Listing files in';
  $$refSTR{'PreProcessing'}      = 'Pre-processing';
  $$refSTR{'Processing'}         = 'Processing';
  $$refSTR{'Reading'}            = 'Reading';
  $$refSTR{'Creating'}           = 'Creating';
  $$refSTR{'Renaming'}           = 'Renaming';
  $$refSTR{'Copying'}            = 'copying';
  $$refSTR{'Moving'}             = 'moving';
  $$refSTR{'HashingMD5'}         = 'Calculating MD5 for';
  $$refSTR{'HashingSHA1'}        = 'Calculating SHA1 for';
  $$refSTR{'HashingSHA256'}      = 'Calculating SHA256 for';
  $$refSTR{'HashingSHA512'}      = 'Calculating SHA512 for';
  $$refSTR{'HashingSHA132'}      = 'Calculating SHA1-32 for';
  $$refSTR{'CalcNbrLines'}       = 'Calculating number of lines for';
  $$refSTR{'CalcNbrPages'}       = 'Calculating number of pages for';
  $$refSTR{'ListingExtensions'}  = 'Listing extension';
  $$refSTR{'WritingReport'}      = 'Writing report';
  $$refSTR{'Started'}            = 'started';
  $$refSTR{'Finished'}           = 'finished';
  $$refSTR{'Duplicate'}          = 'Duplicate';
  $$refSTR{'Removed'}            = 'removed';
  $$refSTR{'Copied'}             = 'Copied';
  $$refSTR{'Copied2'}            = 'file(s) copied';
  $$refSTR{'Moved'}              = 'Moved';
  $$refSTR{'Moved2'}             = 'file(s) moved';
  $$refSTR{'Renamed'}            = 'Renamed';
  $$refSTR{'Renamed2'}           = 'file(s) renamed';
  $$refSTR{'errSpace'}           = 'There is not enough space on the choosen destination folder. Restart and select another one.';
  $$refSTR{'errChars'}           = 'Reserved characters in your input. See documentation.';
  $$refSTR{'SortFiles'}          = 'Sort files';
  $$refSTR{'RenameFiles'}        = 'Rename files';
  $$refSTR{'cancel'}             = 'Cancel';
  $$refSTR{'EndErrors'}          = 'error(s)';
  $$refSTR{'errDoc'}             = 'Documentation.chm have not been found in the program folder.';
  # Main Window
  $$refSTR{'lblInputT'}           = 'Input';
  $$refSTR{'rbInputDir'}          = 'Folder';
  $$refSTR{'chInputDirRecurse'}   = 'Subfolders';
  $$refSTR{'rbInputFiles'}        = 'File(s)';
  $$refSTR{'FileFilters'}         = 'File Filters';
  $$refSTR{'lblFiltersT'}         = 'Filters';
  $$refSTR{'filterSetTip'}        = 'Set filter';
  $$refSTR{'filterAddTip'}        = 'Add filter';
  $$refSTR{'filterDelTip'}        = 'Delele filter(s)';
  $$refSTR{'Functions'}           = 'Functions';
  $$refSTR{'lblFunctions1T'}      = 'List';
  $$refSTR{'lblFunctions2T'}      = 'Copy or move';
  $$refSTR{'lblFunctions3T'}      = 'Rename';
  $$refSTR{'Extensions'}          = 'Extensions';
  $$refSTR{'Files'}               = 'Files';
  $$refSTR{'Include'}             = 'Include';
  $$refSTR{'Path'}                = 'Path';
  $$refSTR{'FullPath'}            = 'Full path';
  $$refSTR{'Filename'}            = 'Filename';
  $$refSTR{'HashValues'}          = 'Hash values';
  $$refSTR{'FileDetails'}         = 'File details';
  $$refSTR{'BasedOn'}             = 'Based on'; 
  $$refSTR{'ListMembers'}         = 'List of members';
  $$refSTR{'NumberFiles'}         = 'Number of files';
  $$refSTR{'NumberLines'}         = 'Number of lines';
  $$refSTR{'NumberPages'}         = 'Number of pages';
  $$refSTR{'NoHeader'}            = 'No header';
  $$refSTR{'NoFolder'}            = 'No folder';
  $$refSTR{'tipFilesOnly'}        = 'Files only';
  $$refSTR{'tipFolderZip'}        = 'Folders and Zip only';
  $$refSTR{'tipTxtFilesOnly'}     = 'Text files only';
  $$refSTR{'and'}                 = 'and';  
  $$refSTR{'lblReportDir'}        = 'Report';
  $$refSTR{'browseDirReport'}     = 'Browse report folder in Explorer';
  $$refSTR{'chOpenReport'}        = 'Open report when finished';
  $$refSTR{'chSaveOpenDir'}       = 'Remember this dir';
  $$refSTR{'errNoValidDir'}       = 'You must enter a valid directory for report';
  $$refSTR{'Copy'}                = 'Copy';
  $$refSTR{'Move'}                = 'Move';
  $$refSTR{'chCopyTree'}          = 'Duplicate tree structure';
  $$refSTR{'chCopyRemDouble'}     = 'Exclude duplicates (based on MD5)';
  $$refSTR{'lblDestination'}      = 'Destination';
  $$refSTR{'chOpenDstDir'}        = 'Open folder when finished';
  $$refSTR{'Replace'}             = 'Replace';
  $$refSTR{'Folders'}             = 'Folders';
  $$refSTR{'By'}                  = 'By';
  $$refSTR{'ByHash'}              = 'By hash';
  $$refSTR{'ExcludeDuplicates'}   = 'Exclude duplicates';
  $$refSTR{'RemoveExtensions'}    = 'Remove extensions';
  $$refSTR{'BySort'}              = 'By sort';
  $$refSTR{'sortOpt'}             = 'Sort options';
  $$refSTR{'sortBy'}              = 'Sort by';
  $$refSTR{'cbSortByAlpha'}       = 'Alphabetical order';
  $$refSTR{'Ascending'}           = 'Ascending';
  $$refSTR{'Descending'}          = 'Descending';
  $$refSTR{'renameOpt'}           = 'Rename options';
  $$refSTR{'lblIncrValType'}      = 'Value type';
  $$refSTR{'lblLength'}           = 'Length (min)';
  $$refSTR{'lblLengthMax'}        = 'Length (max)';
  $$refSTR{'lblInitVal'}          = 'Start with';
  $$refSTR{'lblStepVal'}          = 'Step by';
  $$refSTR{'lblPrefix'}           = 'Prefix (optional)';
  $$refSTR{'lblSuffix'}           = 'Suffix (optional)';
  $$refSTR{'lblExample'}          = 'Example';
  $$refSTR{'chRenReplaceByEval'}  = 'Eval';
  $$refSTR{'lblNotReady'}         = 'Not Ready? Click here';
  $$refSTR{'notReady'}            = 'Not ready';
  $$refSTR{'nextStep'}            = 'Next step';
  $$refSTR{'selectInput'}         = 'You must select a dir or a list of files as input.';
  $$refSTR{'errRegex'}            = 'You must enter a valid regex.';
  $$refSTR{'errBy'}               = 'You must enter a valid replacement expression.';
  $$refSTR{'errRegexFilter'}      = 'Current error in * Filter *';
  $$refSTR{'errRegexReplace'}     = 'Current error in * Replace *';
  $$refSTR{'errRegexReplaceBy'}   = 'Current error in * By *';
  $$refSTR{'setListFilesOpt'}     = 'You must select at least one item to include with the selected function.';
  $$refSTR{'selectReportDir'}     = 'You must select a folder for report.';
  $$refSTR{'selectDstDir'}        = 'You must select a destination folder.';
  $$refSTR{'setRenBySortOpt'}     = 'You must set options for the selected function.';
  $$refSTR{'setRenReplaceBy'}     = 'You must enter an expression in the replace textfield.';
  $$refSTR{'Process'}             = 'Process';
  $$refSTR{'Preview'}             = 'Preview';
  $$refSTR{'StopProcess'}         = 'Stop process';
  $$refSTR{'Configuration'}       = 'Open Settings Window';
  $$refSTR{'btnHelpTip'}          = 'See Documentation';
  # Filters Window
  $$refSTR{'Operator'}            = 'Operator';
  $$refSTR{'OR'}                  = 'OR';
  $$refSTR{'AND'}                 = 'AND';
  $$refSTR{'Type'}                = 'Type';
  $$refSTR{'TypeOp'}              = 'Type Operator';
  $$refSTR{'flags'}               = 'Flags';
  $$refSTR{'searchStr'}           = 'Search';
  $$refSTR{'OnlyFolders'}         = 'Only folders';
  $$refSTR{'FileSize'}            = 'File size';
  $$refSTR{'Contains'}            = 'Contains';
  $$refSTR{'MatchCase'}           = 'Match case';
  $$refSTR{'Regex'}               = 'Regex';
  $$refSTR{'FilenameOnly'}        = 'Filename only';
  $$refSTR{'Size'}                = 'Size';
  $$refSTR{'LastAccessed'}        = 'Last accessed';
  $$refSTR{'LastModified'}        = 'Last modified';
  $$refSTR{'Created'}             = 'Created';
  $$refSTR{'setContains'}         = 'You must enter a keyword or regex for this filter.';
  $$refSTR{'errRegex'}            = 'You must enter a valid regex.';
  $$refSTR{'setFileSize'}         = 'You must enter a valid file size for this filter.';
  $$refSTR{'setDate'}             = 'You must enter dates with valid format for this filter.';
  $$refSTR{'SetAddFilter'}        = 'Set or Add';
  $$refSTR{'Ok'}                  = 'Ok';
  $$refSTR{'moveUp'}              = 'Move selected filter up';
  $$refSTR{'moveDown'}            = 'Move selected filter down';
  # Config Window
  $$refSTR{'winConfig'}       = 'Settings';
  $$refSTR{'general'}         = 'General';
  # General tab
  $$refSTR{'Tool'}            = 'Tool';
  $$refSTR{'Export'}          = 'Export';
  $$refSTR{'OpenUserDir'}     = 'Open user dir';
  $$refSTR{'checkUpdate'}     = 'Check Update';
  $$refSTR{'AutoUpdateTip'}   = 'Check for update at startup';
  $$refSTR{'update1'}         = 'You have the latest version installed.';
  $$refSTR{'update2'}         = 'Check for update';
  $$refSTR{'update3'}         = 'Update';
  $$refSTR{'update5'}         = 'is available. Download it';
  $$refSTR{'localTimezone'}   = 'Local timezone';
  $$refSTR{'formatFileSize'}  = 'Format file size';
  $$refSTR{'chHashLowercase'} = 'Use lowercases for hash value';
  # Logging tab
  $$refSTR{'logging'}         = 'Logging';
  $$refSTR{'chEnableLogging'} = 'Enable logging';
  $$refSTR{'OpenLog'}         = 'Open the log';
  $$refSTR{'rbUseDefaultDir'} = 'Use default folder';
  $$refSTR{'chUseDestDirCM'}  = 'For copy or move, use destination folder';
  $$refSTR{'rbLoggingDir'}    = 'Use this folder';
  # Preview Window
  $$refSTR{'winPreview'}      = 'Preview';
  $$refSTR{'Root'}            = 'Root';
  # About Window
  $$refSTR{'About'}           = 'About';
  $$refSTR{'Version'}         = 'Version';
  $$refSTR{'Author'}          = 'Author';
  $$refSTR{'TranslatedBy'}    = 'Translated by';
  $$refSTR{'Website'}         = 'Website';
  $$refSTR{'TranslatorName'}  = '-';
  
}  #--- End loadStrings

#------------------------------------------------------------------------------#
1;
  
  
  