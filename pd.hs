import Data.Time.Clock

data PD = PD { rating :: String, probability :: Int } deriving Show

calculatePd :: Int -> PD
calculatePd solvencyRatio = if solvencyRatio < 20 then PD "R1" 5 else PD "R2" 20


displayPd :: PD -> IO()
displayPd pd = do
    time <- getCurrentTime
    putStrLn ("Rating is " ++ rating pd ++ " at " ++ show time)
