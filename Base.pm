# $Id: Base.pm,v 1.1.1.1 2001/05/18 16:36:37 matt Exp $

package XML::Filter::Base;

use strict;
use vars qw($VERSION);

$VERSION = '0.01';

sub new {
    my $class = shift;
    my %options = @_;
    die "Need to pass a Handler option to Filters" unless $options{Handler};
    return bless \%options, $class;
}

sub start_document {
    my $self = shift;
    $self->{Handler}->start_document(@_);
}

sub end_document {
    my $self = shift;
    $self->{Handler}->end_document(@_);
}

sub start_element {
    my $self = shift;
    $self->{Handler}->start_element(@_);
}

sub end_element {
    my $self = shift;
    $self->{Handler}->end_element(@_);
}

sub characters {
    my $self = shift;
    $self->{Handler}->characters(@_);
}

sub processing_instruction {
    my $self = shift;
    $self->{Handler}->processing_instruction(@_);
}

sub ignorable_whitespace {
    my $self = shift;
    $self->{Handler}->ignorable_whitespace(@_);
}

sub comment {
    my $self = shift;
    $self->{Handler}->comment(@_);
}

sub notation_decl {
    my $self = shift;
    $self->{Handler}->notation_decl(@_);
}

sub unparsed_entity_decl {
    my $self = shift;
    $self->{Handler}->unparsed_entity_decl(@_);
}

sub entity_decl {
    my $self = shift;
    $self->{Handler}->entity_decl(@_);
}

sub element_decl {
    my $self = shift;
    $self->{Handler}->element_decl(@_);
}

sub doctype_decl {
    my $self = shift;
    $self->{Handler}->doctype_decl(@_);
}

sub xml_decl {
    my $self = shift;
    $self->{Handler}->xml_decl(@_);
}

1;
__END__

=head1 NAME

XML::Filter::Base - Base class for XML::Filter modules

=head1 SYNOPSIS

  package MyFilter;
  use XML::Filter::Base;
  @ISA = ('XML::Filter::Base');

=head1 DESCRIPTION

This module has a very simple task - to be a base class for PerlSAX
filters. It's default behaviour is to pass the input directly to the
output unchanged. It can be useful to use this module as a base class
so you don't have to, for example, implement the characters() callback.

=head1 AUTHOR

Matt Sergeant, matt@sergeant.org

=head1 SEE ALSO

L<XML::Parser::PerlSAX>.

=cut
