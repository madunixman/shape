#! /usr/bin/perl

use DBI;
use strict;

use lib qw(../lib);
use dbiclient;

use lib qw(../conf);
use configuration;


 
my $create_Role_query= " create table Role(  
	ID char(36)
	, created date
	, name varchar(256)
	, updated date
	, description varchar(256)  );";
sub create_Role(){
       	&launch_query($create_Role_query);
}
 

sub save_Role($$$$){


my $ID = $_[0];
my $created = $_[1];
my $name = $_[2];
my $updated = $_[3];
my $description = $_[4];
my $sql = "insert into Role values ( '$ID', '$created', '$name', '$updated', '$description' )";

&launch_query($sql);

}


 
sub update_Role_equals($$$){

my $tableName = $_[0];
my $rKeyValuePairs = $_[1];
my $rWhere = $_[2];

my %wherea = %{$rWhere};
my %keyValuePairs = %{$rKeyValuePairs};

my $updatefields_set = " SET ";
my $updatefields_where = " WHERE ";
my $field;

my $keyssize = keys( %keyValuePairs );
my $wheresize = keys( %wherea );

my $fieldcount = 0;
foreach $field (keys(%keyValuePairs)){
	$fieldcount++; 
	print "field ---- $field
";
	print "SIZE:  $keyssize
";
	$updatefields_set.= "$field = '$keyValuePairs{\"$field\"}'";
	print "SET -------------->  $updatefields_set\n";
	if (  $fieldcount <=  $keyssize -1 ){
		$updatefields_set.= " , ";
	}
}

$fieldcount = 0;
foreach $field (keys(%wherea)){
	$fieldcount++; 
	$updatefields_where .= "$field =  '$wherea{\"$field\"}'" ;
	print "WHERE ----------->  $updatefields_where
";
}

my $sql = "update $tableName $updatefields_set  $updatefields_where ";

&launch_query($sql);
}





1; 