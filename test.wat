
(module
(import "console" "logNumbers" (func $print_f64 (param i32)))
(import "console" "logString" (func $logString (param i32 i32)))


  (import "use" "mem" (memory 1))
  (data (memory 0) (i32.const 0)  "Pedal")
  (func (export "sayPedal")
    
  ;;  (call $log ($num1) (i32.const 5))
   ( call $logString (i32.const 0) (i32.const 5))
    ;;(call $log (i32.const 0) (i32.const 5))
  )



;;name
(func  $print 
  ;; params
  (param $num1 i32)
  (param $num2 i32)
 
  (result i32)
  ;;body
  (
    ;;local.get 3
  ;;call  $print_f64(local.get $num1)
  ;;call  $print_f64(local.get $num2)
  ;;(local.get $num1.add(local.get $num2))

  ;;(call $print(local.get 0)(local.get 1))
    i32.add(local.get $num1)(local.get $num2)
  )
  )
  (export "print" (func $print))


(func $loop
    ;; create a local variable and initialize it to 0
    (param $numStart i32)
    (param $numEnd i32)
    (local $i i32)

    (loop $my_loop

      ;; add one to $i
      local.get $numStart
      i32.const 1
      i32.add
      local.set $numStart

      ;; log the current value of $i
      local.get $numStart
      call $print_f64

      ;; if $i is less than 10 branch to loop
      local.get $numStart
     ;; i32.const 10
      local.get $numEnd
      i32.lt_s
      br_if $my_loop

    )
  )
 (export "loop" (func $loop))
)

  



