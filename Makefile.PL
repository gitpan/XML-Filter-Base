# $Id: Makefile.PL,v 1.1.1.1 2001/05/18 16:36:37 matt Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME	 => 'XML::Filter::Base',
    VERSION_FROM => 'Base.pm',
    AUTHOR       => 'Matt Sergeant',
    ABSTRACT     => 'Base class for SAX filters',
);
