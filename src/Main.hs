import Criterion.Main

fac_scan :: Int -> Int
fac_scan n = scanl (*) 1 [1..] !! n

fac_fold :: Int -> Int
fac_fold n = foldr (*) 1 [1..n]

main =
  let r = [1000, 1001, 2000, 2001]
  in  defaultMain $
        do  n      <- r
            (k, f) <- [("scan", fac_scan), ("fold", fac_fold)]
            pure (bench (k ++ " - " ++ show n) $ whnf f n)
        