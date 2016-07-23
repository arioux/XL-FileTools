#!/usr/bin/perl
# Perl - v: 5.16.3
#------------------------------------------------------------------------------#
# XL-FileToolsLang.pl : Strings for XL-FileTools
# Website             : http://le-tools.com/
# GitHub		          : https://github.com/arioux/XL-FileTools
# Creation            : 2016-05-15
# Modified            : 2016-05-15
# Author              : Alain Rioux (admin@le-tools.com)
#
# Copyright (C) 2016  Alain Rioux (le-tools.com)
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
    $value = encode("iso-8859-1", $value); # Revaluate with different language encoding
    if ($key) { $$refSTR{$key}  = $value; }
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
  $$refSTR{'processRunning'}     = 'Running process';
  $$refSTR{'Smaller'}            = 'Smaller than';
  $$refSTR{'Equal'}              = 'Equal';
  $$refSTR{'Bigger'}             = 'Bigger than';
  $$refSTR{'b'}                  = 'Bytes';
  $$refSTR{'Kb'}                 = 'Kbytes';
  $$refSTR{'Mb'}                 = 'Mbytes';
  $$refSTR{'Gb'}                 = 'Gbytes';
  $$refSTR{'Before'}             = 'Before';
  $$refSTR{'After'}              = 'After';
  $$refSTR{'Options'}            = 'Options';
  $$refSTR{'report'}             = 'report';
  $$refSTR{'selDir'}             = 'Select a folder';
  $$refSTR{'selFiles'}           = 'Select one or multiple files';
  $$refSTR{'selDirReport'}       = 'Select a folder for the report';
  $$refSTR{'selDirDst'}          = 'Select a destination folder';
  $$refSTR{'Extension'}          = 'Extension';
  $$refSTR{'Count'}              = 'Count';
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
  $$refSTR{'NumberLines'}        = 'Calculating number of lines for';
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
  $$refSTR{'lblFiltersT'}         = 'Filters';
  $$refSTR{'filterSetTip'}        = 'Set filter';
  $$refSTR{'filterAddTip'}        = 'Add filter';
  $$refSTR{'filterDelTip'}        = 'Del filter';
  $$refSTR{'lblFunctionsT'}       = 'Functions';
  $$refSTR{'lblFunctions1T'}      = 'List';
  $$refSTR{'lblFunctions2T'}      = 'Copy or move';
  $$refSTR{'lblFunctions3T'}      = 'Rename';
  $$refSTR{'rbListExt'}           = 'List extensions';
  $$refSTR{'rbListFiles'}         = 'List files, include';
  $$refSTR{'chListFilesOptFP'}    = 'Full path';
  $$refSTR{'chListFilesOptFN'}    = 'Filename';
  $$refSTR{'chListFilesOptHV'}    = 'Hash values';
  $$refSTR{'chListFilesHV1'}      = 'MD5';
  $$refSTR{'chListFilesHV2'}      = 'SHA1';
  $$refSTR{'chListFilesHV3'}      = 'SHA256';
  $$refSTR{'chListFilesHV4'}      = 'SHA512';
  $$refSTR{'chListFilesOptFD'}    = 'File details';
  $$refSTR{'chListFilesOptNbrL'}  = 'Number of lines';
  $$refSTR{'chListFilesOptNH'}    = 'No header';
  $$refSTR{'chListFilesOptNF'}    = 'No folder';
  $$refSTR{'lblReportDir'}        = 'Report';
  $$refSTR{'browseDirReport'}     = 'Browse report folder in Explorer';
  $$refSTR{'chOpenReport'}        = 'Open report when finished';
  $$refSTR{'chSaveOpenDir'}       = 'Remember this dir';
  $$refSTR{'rbCopy'}              = 'Copy';
  $$refSTR{'rbMove'}              = 'Move';
  $$refSTR{'chCopyTree'}          = 'Duplicate tree structure';
  $$refSTR{'chCopyRemDouble'}     = 'Exclude duplicates (based on MD5)';
  $$refSTR{'lblDestination'}      = 'Destination';
  $$refSTR{'chOpenDstDir'}        = 'Open folder when finished';
  $$refSTR{'rbRenReplace'}        = 'Replace';
  $$refSTR{'chRenReplaceFolder'}  = 'Folders';
  $$refSTR{'lblRenReplaceBy'}     = 'By';
  $$refSTR{'rbRenByHash'}         = 'By hash';
  $$refSTR{'rbRenSort'}           = 'By sort';
  $$refSTR{'chRenReplaceByEval'}  = 'Eval';
  $$refSTR{'lblNotReady'}         = 'Not Ready ? Click here';
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
  $$refSTR{'rbFiltersDirOnly'}    = 'Only folders';
  $$refSTR{'rbFiltersSize'}       = 'File size';
  $$refSTR{'rbFiltersContains'}   = 'Contains';
  $$refSTR{'chFiltersContainsCase'}     = 'Match case';
  $$refSTR{'chFiltersContainsRegex'}    = 'Regex';
  $$refSTR{'chFiltersContainsFileOnly'} = 'Filename only';
  $$refSTR{'rbFiltersLastAccess'} = 'Last accessed';
  $$refSTR{'rbFiltersLastModif'}  = 'Last modified';
  $$refSTR{'setContains'}         = 'You must enter a keyword or regex for this filter.';
  $$refSTR{'errRegex'}            = 'You must enter a valid regex.';
  $$refSTR{'setFileSize'}         = 'You must enter a valid file size for this filter.';
  $$refSTR{'setDate'}             = 'You must enter dates with valid format for this filter.';
  $$refSTR{'SetAddFilter'}        = 'Set or Add';
  
  # Config Window
  $$refSTR{'winConfig'}       = 'Settings';
  $$refSTR{'general'}         = 'General';
  # General tab
  $$refSTR{'Tool'}            = 'Tool';
  $$refSTR{'Export'}          = 'Export';
  $$refSTR{'checkUpdate'}     = 'Check Update';
  $$refSTR{'AutoUpdateTip'}   = 'Check for update at startup';
  $$refSTR{'update1'}         = 'You have the latest version installed.';
  $$refSTR{'update2'}         = 'Check for update';
  $$refSTR{'update3'}         = 'Update';
  $$refSTR{'update4'}         = 'Version';
  $$refSTR{'update5'}         = 'is available. Download it';
  $$refSTR{'lblFuncT'}        = 'Functions';
  $$refSTR{'chHashLowercase'} = 'Use lowercases for hash value';
  # Logging tab
  $$refSTR{'logging'}         = 'Logging';
  $$refSTR{'chEnableLogging'} = 'Enable logging';
  $$refSTR{'OpenLog'}         = 'Open the log';
  $$refSTR{'rbUseDefaultDir'} = 'Use default folder';
  $$refSTR{'chUseDestDirCM'}  = 'For copy or move, use destination folder';
  $$refSTR{'rbLoggingDir'}    = 'Use this folder';
  
  # Rename By Sort Option Window
  $$refSTR{'sortOpt'}         = 'Sort options';
  $$refSTR{'sortBy'}          = 'Sort by';
  $$refSTR{'cbSortByAlpha'}   = 'Alphabetical order';
  $$refSTR{'Ascending'}       = 'Ascending';
  $$refSTR{'Descending'}      = 'Descending';
  $$refSTR{'renameOpt'}       = 'Rename options';
  $$refSTR{'lblIncrValType'}  = 'Value type';
  $$refSTR{'lblLength'}       = 'Length (min)';
  $$refSTR{'lblInitVal'}      = 'Start with';
  $$refSTR{'lblStepVal'}      = 'Step by';
  $$refSTR{'lblPrefix'}       = 'Prefix (optional)';
  $$refSTR{'lblSuffix'}       = 'Suffix (optional)';
  $$refSTR{'lblExample'}      = 'Example';
  $$refSTR{'Ok'}              = 'Ok';
  
  # Preview Window
  $$refSTR{'winPreview'}      = 'Preview';
  $$refSTR{'Root'}            = 'Root';
  
  # About Window
  $$refSTR{'about'}           = 'About';
  $$refSTR{'version'}         = 'Version';
  $$refSTR{'author'}          = 'Author';
  $$refSTR{'translatedBy'}    = 'Translated by';
  $$refSTR{'website'}         = 'Website';
  $$refSTR{'translatorName'}  = '-';
  
  }  #--- End loadStrings

#------------------------------------------------------------------------------#
1;
  
  
  