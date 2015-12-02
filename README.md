# Prime Tester App

You will build an app that tests whether a number is prime.


*A prime number is a number only divisible by 1 and itself.*

In order to complete this app, you will need to demonstrate an understanding of methods, control flow — conditionals and loops — as 
well as variables, operators, and basic UIBuilder.

# Extra Challenge 1
Great! Now you have an easy way to show your users whether they've entered a prime number or not. Now let's clean it up a little bit! Based on what you learned about methods, let's pull that logic out of the `IBAction` and into a method named, `checkIfPrime()`. The program should work exactly how it did before.

# Extra Challenge 2
Nice, so you stripped it out into it's own method. Now, let's make this game a little more fun and let users choose between two games. You already have a way to check if a number is prime (`checkIfPrime()`), so let's add a new game that checks if it's even (`checkIfEven()`).

You should allow the user of your app to choose between two games they want to play, enter a number, and give the correct feedback depending on the game they're playing. For example, if you enter *6* into the textfield, and the prime tester game is selected, you should give feedback that the number is not prime. However, if the user now selects to play the even tester game, when they re-hit "submit" you should give feedback that the number is even and therefore they have won the game.

I would recommend looking into using a [UIPickerView](http://sourcefreeze.com/ios-uipickerview-example-using-swift/) for this, but there are a million ways you could do this, so don't feel constrained to that. Don't forget to use your lessons about wireframing and psuedocoding before starting this exercise! Good luck!

<a href='https://learn.co/lessons/pc-ios-primetester' data-visibility='hidden'>View this lesson on Learn.co</a>
