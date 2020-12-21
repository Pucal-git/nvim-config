open Core
(* module type Order = sig *)
(*   type t *) 
(*   val create_new_order : Time.t -> float  -> float -> t *) 
(*   val close_order : t -> float -> Time.t -> unit *)  
(* end *) 

module Order = struct
  type t = {created : Time.t;
            size : float ; 
            price_open : float ;
            mutable price_close : float ;
            mutable date_closed : Time.t  }

  let create_new_order ~created ~size ~price_open =
    {t.
      created = created ; size = size ; price_open = price_open ; price_close = 0. ; date_closed = Time.now ()}

  let close_order ~order ~price_close ~date_closed = 
          order.price_close <- price_close ;
          order.date_closed <- date_closed ; 
end





