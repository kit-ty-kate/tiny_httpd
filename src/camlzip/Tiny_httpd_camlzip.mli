
val middleware :
  ?compress_above:int ->
  ?buf_size:int -> unit ->
  Tiny_httpd.Middleware.t
(** Middleware responsible for deflate compression/decompression.
    @since 0.11 *)

val setup :
  ?compress_above:int ->
  ?buf_size:int -> Tiny_httpd.t -> unit
(** Install middleware for tiny_httpd to be able to encode/decode
    compressed streams
    @param compress_above threshold above with string responses are compressed
    @param buf_size size of the underlying buffer for compression/decompression *)
