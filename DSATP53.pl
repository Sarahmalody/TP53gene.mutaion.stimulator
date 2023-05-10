#!/usr/bin/perl

use strict;
use warnings;

# Read in the TP53 gene sequence from a file
open my $fh, '<', 'tp53.txt' or die "Couldn't open file: $!";
my $tp53_seq = '';
while (my $line = <$fh>) {
    chomp $line;
    $tp53_seq .= $line;
}
close $fh;

# Check if the sequence contains the p.R175H mutation
if ($tp53_seq !~ /CGC\w{171}CAC/) {
    print "Functional TP53 gene\n";
} else {
    print "TP53 mutation caused, updated and detected.\n";
    # Replace the amino acid at position 175 with histidine (H)
    substr($tp53_seq, 174, 1, "C");
    substr($tp53_seq, 175, 1, "A");
    substr($tp53_seq, 176, 1, "C");
    # Print the mutated TP53 sequence
    print "Mutated TP53 gene sequence: $tp53_seq\n";
}

# Ask the user if they want to see the mutation
print "Do you want to see the mutation? (yes/no): ";
my $answer = <STDIN>;
chomp $answer;

# Print the nucleotide changes if the user wants to see the mutation
if ($answer eq "yes") {
    my $mutated_seq = $tp53_seq;
    substr($mutated_seq, 174, 1, "C");
    substr($mutated_seq, 175, 1, "A");
    substr($mutated_seq, 176, 1, "C");
    my $original_aa = substr($tp53_seq, 174, 3);
    my $mutated_aa = substr($mutated_seq, 174, 3);
    print "Mutation: $original_aa -> $mutated_aa\n";
    print "Nucleotide changes: CGC -> CAC\n";
}

# Ask the user if they wish to cause lung cancer
print "Do you wish to cause lung cancer? (yes/no): ";
$answer = <STDIN>;
chomp $answer;

# Mutate the TP53 gene sequence if the user wants to cause lung cancer
if ($answer eq "yes") {
    # Replace the amino acid at position 175 with histidine (H)
    substr($tp53_seq, 174, 1, "C");
    substr($tp53_seq, 175, 1, "A");
    substr($tp53_seq, 176, 1, "C");
    print "TP53 mutation caused, updated and detected.\n";
    # Print the mutated TP53 sequence
    print "Mutated TP53 gene sequence: $tp53_seq\n";
}
# Ask the user if they wish to know about TP53 gene in the human body
print "Do you want to know about TP53 gene in the human body? (yes/no): ";
$answer = <STDIN>;
chomp $answer;

# Print a paragraph on TP53 and its function in the human body if the user wants to know
if ($answer eq "yes") {
    print "TP53 is a tumor suppressor gene that plays a critical role in preventing the formation and growth of cancerous tumors. It helps to regulate the cell cycle and prevent the replication of damaged or abnormal cells. When TP53 is mutated or absent, it can lead to uncontrolled cell growth and the development of cancer. Mutations in TP53 have been linked to a variety of different cancers, including lung cancer, breast cancer, and colon cancer.\n";
}

# Ask the user if they wish to know the outcome of the mutation they caused
print "Do you want to know the outcome of the mutation you caused? (yes/no): ";
$answer = <STDIN>;
chomp $answer;

# Print a paragraph on the outcome of the mutation if the user wants to know
if ($answer eq "yes") {
    print "The p.R175H mutation in TP53 has been linked to an increased risk of lung cancer. Studies have shown that individuals with this mutation are more likely to develop lung cancer at a younger age and with a more aggressive form of the disease. Additionally, this mutation has been associated with a poorer overall prognosis and decreased survival rates.\n";
}

# ask user if they want to cure the mutation
    print "Do you want to know possible cures for the mutation? (y/n) ";
    my $see_cures = <STDIN>;
    chomp($see_cures);
    if (lc($see_cures) eq 'y') {
        print "There is currently no cure for the p.R175H mutation in TP53, but there are various treatment options available, including chemotherapy, radiation therapy, and surgery.\n";
    }# ask user if they want to cure the mutation
    print "Do you want to know possible cures for the mutation? (y/n) ";
    my $see_cures = <STDIN>;
    chomp($see_cures);
    if (lc($see_cures) eq 'y') {
        print "There is currently no cure for the p.R175H mutation in TP53, but there are various treatment options available, including chemotherapy, radiation therapy, and surgery.\n";
    }
print "Keep coding champ, keep learning and unraveling mysteries.\n";