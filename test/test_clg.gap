# # Lie Group Test
#
# Test of Lie group functions in libGroup
#
# Author(s):
# Haopin Wu <psistwu@outlook.com>
#

  # preload
  LIB_LIST := [ "Sys", "Basic", "Group", "CompactLieGroup", "DirectProduct" ];
  MakeReadOnlyGlobal( "LIB_LIST" );
  Read( "../preload.gap" );

# ## Test 1: generate O(2) and SO(2)
  Print( "=== Test 1 ===\n" );

  # O(2)
  Print( "Generate O(2) and select CCS of O(2).... " );
  o2 := OrthogonalGroupOverReal( 2 );
  ccss_o2 := ConjugacyClassesSubgroups( o2 );
  ccsid_o2 := CCSId( ccss_o2 );
  ccs_o2 := ccsid_o2( [ 2, 3 ] );
  Print( "Done!\n" );

  # SO(2)
  Print( "Generate SO(2) and select CCS of O(2).... " );
  so2 := SpecialOrthogonalGroupOverReal( 2 );
  ccss_so2 := ConjugacyClassesSubgroups( so2 );
  ccsid_so2 := CCSId( ccss_so2 );
  ccs_so2 := ccsid_so2( [ 1, 3 ] );
  Print( "Done!\n" );