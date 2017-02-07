class Relation < Node


  def is? x
    return x.to_s == to_s
  end

  def is x
    return x.to_s == to_s
  end

#  def self.method_missing method,*args
#    return Relation.find_by_name method
#  end
  def self.get relation
    return Relation.find_by_name(relation)
  end



  @@Category=Relation.find_by_id 43
  def self.Category
    @@Category
  end

  @@SubContext=Relation.find_by_id 44
  def self.SubContext
    @@SubContext
  end

  @@SuperContext=Relation.find_by_id 45
  def self.SuperContext
    @@SuperContext
  end


  @@Synonym=Relation.find_by_id 32
  def self.Synonym
    @@Synonym
  end

#rake db:fixtures:load

# ALSO_SEE   :
# id: 0x0
# name: "ALSO_SEE"
## ^
#
  @@Antonym=Relation.find_by_id 1
  def self.Antonym
    @@Antonym
  end
# ANTONYM :
#    id: 0x1
#    context_id: 103
#    context_id: 103
#    name: "ANTONYM"
### !
#
# ATTRIBUTE :
#    id: 0x2
#    context_id: 103
#    name: "ATTRIBUTE"
### =
#
# CAUSE:
#    id: 0x3
#    context_id: 103
#    name: "CAUSE"
### >
#
#
# DERIVATIONALLY_RELATED_FORM :
#    id: 0x5
#    context_id: 103
#    name: "DERIVATIONALLY_RELATED_FORM"
### +
## zero (noun.) => to zero (v.) ++
#


  @@Derived=Relation.find_by_id 4
  def self.Derived
    @@Derived
  end
# DERIVED_FROM_ADJECTIVE :
#    id: 0x4
#    context_id: 103
#    name: "DERIVED_FROM_ADJECTIVE"
# # \
## zero (adj.) => to zero (v.) ++
#
#
# DOMAIN_OF_SYNSET_CATEGORY   :
#   id: 0x6
#   name: "DOMAIN_OF_SYNSET_CATEGORY"
### ;c
## sheet @ maths !!
#
# DOMAIN_OF_SYNSET_REGION  :
#   id: 0x7
#   name: "DOMAIN_OF_SYNSET_REGION"
### ;r
## mate @ australia billion@US --
#
# DOMAIN_OF_SYNSET_USAGE :
#    id: 0x8
#    context_id: 103
#    name: "DOMAIN_OF_SYNSET_USAGE"
### ;u
##bitch @ colloquialism  || fin de siecle @ French   # fuck(vulgar)
#
# ENTAILMENT :
#    id: 0x9
#    context_id: 103
#    name: "ENTAILMENT"
### *
## jump implies come down		 to anger s.o. => s.o. sees red
#
  @@Hypernym=Relation.find_by_id 10
  def self.Hypernym
    @@Hypernym
#    Relation.find_by_id 10
#    Relation.find_by_name "HYPERNYM"
  end

# HYPERNYM :
#    id: 0xa #10
#    context_id: 103
#    name: "HYPERNYM"
### @

  @@Hyponym=Relation.find_by_id 11
  def self.Hyponym
    @@Hyponym
#    Relation.find_by_id 11
#    Relation.find_by_name "HYPONYM"
  end

# HYPONYM :
#    id: 0xb #11
#    context_id: 103
#    name: "HYPONYM"
#
# MEMBER_HOLONYM:
#    id: 0xc    #12
#    context_id: 103
#    name: "MEMBER_HOLONYM"
### #m
#
  @@Holonym=Relation.find_by_id(12)
  def self.Holonym
    @@Holonym
  end
  def self.Owner
    @@Holonym
  end

  #TODO: cache
  @@Meronym=Relation.find_by_id(13)
  def self.Member
    @@Meronym
  end
  def self.Meronym
    @@Meronym
#    Relation.find_by_id 13
  end

  @@PartMeronym=    Relation.find_by_id 18
  def self.Part
    @@PartMeronym
#    Relation.find_by_id 18
  end


  @@SubstanceMeronym=    Relation.find_by_id 23
  def self.Substance
    @@SubstanceMeronym
#    Relation.find_by_id 23
  end

# MEMBER_MERONYM:
#    id: 0xd       #13
#    context_id: 103
#    name: "MEMBER_MERONYM"
### %m
#
# MEMBER_OF_THIS_DOMAIN_CATEGORY :
#    id: 0xe         #14
#    context_id: 103
#    name: "MEMBER_OF_THIS_DOMAIN_CATEGORY"
### -c
## Old Testament	:  Simon in(of the) 			Ethiopia: Rastafarian  aviation: to overfly
##  name: chandelle
#
# MEMBER_OF_THIS_DOMAIN_REGION :
#    id: 0xf            #15
#    context_id: 103
#    name: "MEMBER_OF_THIS_DOMAIN_REGION"
### -r  IN Japan :  Sushi ! France :  Marne?naja
#
# MEMBER_OF_THIS_DOMAIN_USAGE :
#    id: 0x10              #16
#    context_id: 103
#    name: "MEMBER_OF_THIS_DOMAIN_USAGE"
## # -u
#
# PART_HOLONYM:
#    id: 0x11
#    context_id: 103
#    name: "PART_HOLONYM"
## # #p
#
# PART_MERONYM:
#    id: 0x12
#    context_id: 103
#    name: "PART_MERONYM"
## # %p
#
# PARTICIPLE_OF_VERB   :
#    id: 0x13
#    context_id: 103
#    name: "PARTICIPLE_OF_VERB"
## # <
#
# PERTAINYM  :
#    id: 0x14
#    context_id: 103
#    name: "PERTAINYM"
## # \
## cellular(a) \ cell(n) equally(adv)-equal(adj)
#
# SIMILAR_TO :
#    id: 0x15
#    context_id: 103
#    name: "SIMILAR_TO"
## # &
# #?
#
# SUBSTANCE_HOLONYM   :
#    id: 0x16
#    context_id: 103
#    name: "SUBSTANCE_HOLONYM"
## # #s
# # Lithium IS-CONTAINED-BY batteries
#
# SUBSTANCE_MERONYM :
#    id: 0x17
#    context_id: 103
#    name: "SUBSTANCE_MERONYM"
#    ##CONTAINS # %s
# # asperin CONTAINS salicylic acid
#
# VERB_GROUP :
#    id: 0x18
#    context_id: 103
#    name: "VERB_GROUP"
## # $
#
# RELATIONSHIP_COUNT:
#    id: 0x19
#    context_id: 103
#    name:  "RELATIONSHIP_COUNT"
##
  def relation_path
    puts "TEST"
  end

  def Antonym
    return Relation.Hyponym if self==Relation.Hypernym
    return Relation.Hypernym if self==Relation.Hyponym
    return Relation.Synonym if self==Relation.Synonym
    return Relation.Antonym if self==Relation.Antonym
#    return Relation.Attribute if self==Relation.Owner?
    return Relation.Derived if self==Relation.Derived
    return Relation.SubContext if self==Relation.SuperContext
    return Relation.SuperContext if self==Relation.SubContext
  end

  def anti
    return self.Antonym()
  end
end
