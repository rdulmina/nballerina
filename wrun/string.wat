(module 
  ;; type_section
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate))) (extends $Any)) 
  ;; type_section_end
  ;; import_section
  (import "string" "create" (func $str_create (param i32) (param i32) (result anyref))) 
  (import "string" "length" (func $str_length (param anyref) (result i32))) 
  (import "string" "concat" (func $str_concat (param anyref) (param anyref) (result anyref))) 
  (import "string" "eq" (func $str_eq (param anyref) (param anyref) (result i32))) 
  (import "string" "comp" (func $str_comp (param i32) (param anyref) (param anyref) (result i32))) 
  ;; import_section_end
  ;; export_section
  (export "get_string" (func $get_string)) 
  ;; export_section_end
  ;; func_section
  (func $w_str_len (param $0 (ref $String)) (result i64) 
    (i64.extend_i32_u 
      (i32.sub 
        (call $str_length 
          (struct.get $String $val 
            (local.get $0))) 
        (array.len $Surrogate 
          (struct.get $String $surrogate 
            (local.get $0)))))) 
  (func $w_str_concat (param $0 (ref $String)) (param $1 (ref $String)) (result (ref $String)) 
    (local $2 (ref null $Surrogate)) 
    (local $3 (ref null $Surrogate)) 
    (local $4 i32) 
    (local $5 i32) 
    (local $6 (ref null $Surrogate)) 
    (local $7 i32) 
    (local $8 i32) 
    (block 
      (local.set $2 
        (struct.get $String $surrogate 
          (local.get $0))) 
      (local.set $3 
        (struct.get $String $surrogate 
          (local.get $1))) 
      (local.set $4 
        (array.len $Surrogate 
          (local.get $2))) 
      (local.set $5 
        (array.len $Surrogate 
          (local.get $3))) 
      (local.set $6 
        (array.new_default_with_rtt $Surrogate 
          (i32.add 
            (local.get $4) 
            (local.get $5)) 
          (rtt.canon $Surrogate))) 
      (local.set $7 
        (i32.const 0)) 
      (loop $block1$continue 
        (if 
          (i32.lt_s 
            (local.get $7) 
            (local.get $4)) 
          (block 
            (array.set $Surrogate 
              (local.get $6) 
              (local.get $7) 
              (array.get $Surrogate 
                (local.get $2) 
                (local.get $7))) 
            (local.set $7 
              (i32.add 
                (local.get $7) 
                (i32.const 1))) 
            (br $block1$continue)))) 
      (local.set $8 
        (i32.const 0)) 
      (loop $block2$continue 
        (if 
          (i32.lt_s 
            (local.get $8) 
            (local.get $5)) 
          (block 
            (array.set $Surrogate 
              (local.get $6) 
              (local.get $7) 
              (array.get $Surrogate 
                (local.get $3) 
                (local.get $8))) 
            (local.set $7 
              (i32.add 
                (local.get $7) 
                (i32.const 1))) 
            (local.set $8 
              (i32.add 
                (local.get $8) 
                (i32.const 1))) 
            (br $block2$continue)))) 
      (return 
        (struct.new_with_rtt $String 
          (i32.const 5)
          (call $str_concat 
            (struct.get $String $val 
              (local.get $0)) 
            (struct.get $String $val 
              (local.get $1))) 
          (ref.as_non_null 
            (local.get $6)) 
          (rtt.sub $String
            (rtt.canon $Any)))))) 
  (func $get_string (param $0 eqref) (result anyref) 
    (struct.get $String $val 
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (rtt.sub $String
          (rtt.canon $Any)))))
  ;; func_section_end        
  ) 
