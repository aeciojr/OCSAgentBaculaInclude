###########################################
## Por: Aecio Junior - 2017/10/06         #
## Get bacula include content             #
###########################################
 
package Ocsinventory::Agent::Modules::BaculaInclude;
 
sub new {
   my $name="baculainclude";
   my (undef,$context) = @_;
   my $self = {};
 
   $self->{logger} = new Ocsinventory::Logger ({
            config => $context->{config}
                        inventory_handler => $name."_inventory_handler",
                        end_handler => undef
   };
 
   bless $self;
}
 
sub baculainclude_inventory_handler {
   my $self = shift;
   my $logger = $self->{logger};
   my $common = $self->{context}->{common};
   $logger->debug("Debug -> baculainclude_inventory_handler");
   my $baculainclude = undef;
   my $baculainclude = `[ -f /etc/bacula/bacula_include.txt ] && cat /etc/bacula/bacula_include.txt || echo INCLUDE_INEXISTENTE`;
   $baculainclude =~s/\n/<br>/g;
   push @{$common->{xmltags}->{BACULAINCLUDE}},
   {
      INCLUDE => [$baculainclude],
   };
}
 
1;
