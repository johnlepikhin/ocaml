
module CMI : sig
           module Ident :
             sig
               val reset : unit -> unit
               val t : V3120_types.Ident.t -> Ident.t
             end
           module Path : sig val t : V3120_types.Path.t -> Path.t end
           module Primitive :
             sig
               val description :
                 V3120_types.Primitive.description -> Primitive.description
             end
           module Types :
             sig
               val reset : unit -> unit
               val signature_item :
                 V3120_types.Types.signature_item -> Types.signature_item
               val record_representation :
                 V3120_types.Types.record_representation ->
                 Types.record_representation
             end
           module Cmi_format :
             sig
               val pers_flags :
                 V3120_types.Cmi_format.pers_flags -> Cmi_format.pers_flags
             end
         end


val input_cmi_file : in_channel -> string -> Cmi_format.cmi_file