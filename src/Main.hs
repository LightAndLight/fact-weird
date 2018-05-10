import Criterion.Main

fac_scan :: Int -> Int
fac_scan n = scanl (*) 1 [1..] !! n

fac_fold :: Int -> Int
fac_fold n = foldr (*) 1 [1..n]

main =
  defaultMain
  [ bench "scan - 2000" $ whnf fac_scan 2000
  , bench "fold - 2000" $ whnf fac_fold 2000
  , bench "scan - 2001" $ whnf fac_scan 2001
  , bench "fold - 2001" $ whnf fac_fold 2001
  ]
