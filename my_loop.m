

label(start)

comment(`  code that implements the loop with ble0 at top of loop  ')
comment(`  code that implements the loop                       ')
comment(`    sum = 0;                                          ')
comment(`    for( i = 1; i <= 10; i++ ) {                       ')
comment(`       sum = sum + i;                                 ')
comment(`    }                                                 ')

   word(sum,0)
   word(i,1)

   word(zero,0)
   word(one,1)
   word(ten,10)


   load(zero)  comment(`  sum = 0         ACC <- memory[zero]  ')
   store(sum)  comment(`                  memory[sum] <- ACC   ')
   load(one)   comment(`  i = 1                               ')
   store(i)

   

label(loop)

   load(i)     comment(`  branch to done if i <= 0             ')
   ble0(done)

   load(sum)   comment(`  sum = sum + i                        ')
   add(i)
   store(sum)

   load(i)     comment(`  i = i + 1                            ')
   add(i)
   store(i)

   ba(loop)    comment(`  unconditionally go back to loop      ')



label(done)

   print(sum)
   halt

comment(`  start execution at label start  ')  start





		
