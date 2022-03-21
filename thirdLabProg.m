
  label(start)

     load(beta)
     mul(gamma)
     div(delta)
     store(alpha)

     halt

  comment(`  data section for program  ')

     word(alpha,50)
     word(beta,2)
     word(gamma,12)
     word(delta,6)

  comment(`  start execution at label start  ')

     start