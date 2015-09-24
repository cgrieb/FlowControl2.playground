//: Playground - Flow Control

import UIKit

// for each of the following ingredients
// enter the quantity you have on hand

var bananas = 0         // # of bananas
var heavyCream = 0      // # of cups
var vanilla = 0         // # of teaspoons
var chocolateChips = 0  // # of cups
var eggs = 0            // # of eggs
var brownSugar = 0      // # of cups
var milk = 0            // # of cups of milk
var shortening = 0      // # of cups

// these are the ingregients I already have

let salt = 20           // # of teaspoons
let flour = 20          // # of cups
let sugar = 20          // # of cups
let butter = 20         // # of tablespoons
let cornstarch = 20     // # of tablespoons
let bakingSoda = 20     // # of teaspoons
let bakingPowder = 20   // # of teaspoons

// let's see what we can make with the ingredients we have

let vanillaPudding = milk >= 2 && sugar >= 1 && cornstarch >= 3 && salt >= 1 && vanilla >= 1 && butter >= 1
let choccolateChipCookies = flour >= 2 && bakingSoda >= 1 && salt >= 1 && butter >= 1 && brownSugar >= 1 && sugar >= 1 && vanilla >= 1 && eggs >= 2 && chocolateChips >= 2
let pieCrust = salt >= 1 && flour >= 2 && shortening >= 1
let bananaBread = butter >= 1 && sugar >= 1 && eggs >= 2 && bananas >= 2 && flour >= 2 && bakingSoda >= 1
let sugarCookies = shortening >= 1 && butter >= 1 && sugar >= 2 && eggs >= 2 && vanilla >= 2 && flour >= 4 && bakingPowder >= 2 && salt >= 1
let bananaCreamPie = vanillaPudding && pieCrust && bananas >= 3 && heavyCream >= 1
let chocolateMousse = heavyCream >= 4 && sugar >= 1 && vanilla >= 1 && chocolateChips >= 2 && salt >= 1

// so, let's decide...

let choices = [(vanillaPudding,"vanilla pudding"),
        (choccolateChipCookies,"chocolate chip cookies"),
        (bananaBread,"banana bread"),
        (sugarCookies,"sugar cookies"),
        (bananaCreamPie,"banana cream pie"),
        (chocolateMousse,"chocolate mousse")]

var recipeCount = 0

print("\nWhat would you like to make? We have ingredients for:", terminator: "\n")
for (available,name) in choices {
    if available {
        print(name, terminator: "\n")
        recipeCount++
    }
}

if recipeCount == 0 {
    print("Nothing yummy! Time to go to the store!", terminator: "\n")
}
