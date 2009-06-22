#!perl -T

use Test::More tests => 1;
use lib 't/lib';
use Mockform;
use SparkX::Form::Field::File;

my $form = Mockform->new;
my $b = SparkX::Form::Field::File->new(name => 'test', form => $form);

is($b->to_xhtml,'<input name="test" type="file" />','Test xhtml representation');
