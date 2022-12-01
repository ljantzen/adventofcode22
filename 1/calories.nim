import std/strformat
import std/algorithm
import strutils 

var elfcalories : array[1000,int] 
var numelves = 0 

proc readCalories = 
  let f = open("calories.txt")
  defer: f.close()

  var calcount : string

  while f.readLine(calcount): 
    if calcount == "" : 
      numelves += 1 
    else:
      elfcalories[numelves] += parseInt(calcount)
  
  elfcalories.sort()
  elfcalories.reverse()
  let mostcalories=elfcalories[0]
  let top3 = elfcalories[0] + elfcalories[1] + elfcalories[2]

  echo(fmt"Most calories:{mostcalories}")
  echo(fmt"Sum of top 3:{top3}")

readCalories()
