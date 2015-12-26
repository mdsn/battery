{-# LANGUAGE OverloadedStrings #-}

module Main where

import System.Process

currentChargePath = "/sys/class/power_supply/BAT1/charge_now"
fullChargePath    = "/sys/class/power_supply/BAT1/charge_full"

main :: IO ()
main = do
    currentStr <- readProcess "cat" [currentChargePath] ""
    fullStr    <- readProcess "cat" [fullChargePath] ""

    let current    = read currentStr :: Integer
        full       = read fullStr    :: Integer
        percentage = current * 100 `div` full

    putStrLn $ show percentage
    
