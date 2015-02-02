library("mosaic")
xpnorm(0.15, 0,0.15)

xpnorm(600, 500, 100)
xqnorm(.75, 500, 100)
## Not run: 
if (require(manipulate)) {
  manipulate( xpnorm(score, 500, 100, verbose=verbose),
              score = slider(200,800),
              verbose = checkbox(TRUE, label="Verbose Output")
  )
}
