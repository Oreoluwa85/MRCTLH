#!/bin/perl -w
 
use Bio::Seq;
use Bio::SeqIO;
use Bio::SeqIO::tinyseq;
use Bio::Taxon;

my $file = "taxonomy_result.xml";
my $fileout = "taxon.tab";
my $seq_in =  Bio::SeqIO->new( -file =>$file, -format => 'xml' );
my $seq_out =  Bio::SeqIO->new( -file =>$fileout, -format => 'table' );

  while ( my $seq = $seq_in->next_seq) {
	open(my $fh, '>>', $fileout) or die "Could not open file '$fileout' $!"; 
	print $fh $seq-> display_id,"\t",$seq-> accession_number,"\t",$seq-> seq,"\t",(($seq->species->ncbi_taxid) or shift),"\t",$seq->species->binomial,"\t",$seq->length,"\n";
	close $fh;
	print "done\n";
	
  }