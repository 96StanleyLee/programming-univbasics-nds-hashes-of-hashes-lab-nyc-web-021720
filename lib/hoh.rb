# Build a nested HoH of the classification of biological life on Earth based
# on these commented-out snippets assigned to PORTION_1-PORTION_4. Return
# that HoH as the return value for the method "naming_system."
#
# The tests will guide your construction.
#
 PORTION_1 = {
   label: "Kingdom",
   sub_category: { #1
     label: "Phylum",
     sub_category: { #2
       label: "Class"
     }
   }
 }
#
 PORTION_2 = { #3 before
   label: "Order"
 }
#
 PORTION_3 = { #4 before
   label: "Family",
   sub_category: {
     label: "Genus",
   }
 }
#
 PORTION_4 = { #5
   label: "Species",
   sub_category: nil
 }

def naming_system
  # Remember:
  #  Kingdom
  #  Phylum
  #  Class
  #  Order
  #  Family
  #  Genus
  #  Species
  # So, if we have the "Kingdom" node we should be able to "tunnel" into the
  # HoH all the way to Species!
 new_hash= PORTION_1

 new_hash[:sub_category][:sub_category][:sub_category] = PORTION_2
 new_hash[:sub_category][:sub_category][:sub_category][:sub_category] = PORTION_3
 new_hash[:sub_category][:sub_category][:sub_category][:sub_category][:sub_category][:sub_category] = PORTION_4

new_hash

end
