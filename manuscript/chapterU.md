# Unknowable Outcomes

## Dynamical Systems - From Simplicity, Complexity

### Rabbits and Foxes

Imagine a forest consisting only of foxes and rabbits. Foxes eat only rabbits, rabbits eat a continually renewable supply of plants that for simplicity we don't worry about exhausting. Lets suppose the system follows these predictable rules:

  * The rabbit population, at any point, grows in proportion to its size (standard Exponential Growth)
  * The number of rabbits consumed is proportional to the number of foxes
  * The fox population grows in proportion to the number of rabbits available
  * Each population count changes all at once in one big 'tick' of a hypothetical clock
  * There are at least 100 rabbits initially

This is called the Logistical Equation, and from it, if you have at the start a known number of rabbits, and a known number of foxes, you have all the information you need to run a simulation of this system for as long as you like, to investigate its behavior. So I ask a deceptively complex question:

*What is the long-term outcome of such a system ?*

### Outcome Classes - Categories of similar Outcomes

Let's discuss some of the possibile types of outcomes of the Logistical Equation, we'll call them Outcome Classes:

  * "Extinction": Foxes exhaust the rabbit population and eventually themselves go extinct
  * "Flip-Flop": A back-and-forth cycle gets established - such as alternating years of more rabbits, and fewer rabbits
  * "Zodiac": A longer cycle gets established - like every 12 years rabbit population "corrects" back down
  * "Mellow": Eventually a steady-state of population is reached where the numbers no longer change
  * "Stock Market": A totally random cycle occurs that never loops back on itself

If any of those possibilities had not occurred to you, do any of them seem impossible, or more or less likely ?

If you were to find out the results of running several such simulations you might be surprised. The steady-state outcome is *very seldom* reached. Only at very particular values of the initial populations will the births and deaths precisely cancel. And if they didn't cancel in the first year, they probably will never end up in steady-state !

Another surprise - the chance of the "Stock Market" outcome is actually over 30%! It may surprise you that picking two numbers for foxes and rabbits, and running this simple, highly predictable system *could* result in a stream of numbers that are ultimately "random", but in fact a large number of initial conditions result in just that.

Lastly, you probably think that the different Outcome Classes can be laid down next to each other along the number line, and that "Extinction" will be on one side and "Stock Market" on the other. But in fact the regions are so folded into each other it's more like cream being stirred into coffee. There are regions of starting numbers of rabbits where if you increase by 1 you have a totally different outcome than if you decrease by 1. This results in large ranges of numbers where each outcome seems to occur 'randomly' within that range !

If this is a little hard to follow - it's because that is exactly the point - it is "hard to follow"
a dynamical system. Once it has a large number of 'players', or 'interactions', or if it becomes iterated a large number of times, the long term behavior is always *impossible* to predict.

But "Wait!" you say - "This is Math, and the equations are not random, and we can just plug in the initial number and run the equations enough times to answer how many rabbits there are in a future year." But the trick is that in reality, you never know the EXACT number of rabbits, only estimations. And the ranges where for 1,000,000 rabbits, a cycle of 7 happens and for 999,999 rabbits, the cycle never repeats - are MOST of the possibilities.

### The Butterfly Effect

Imagine a planet just the same size as Earth, but with a mirror-smooth surface, completely uniform to within one molecule. Let's imagine this planet hanging out like this for a couple of years.

Let's take a picture of the atmosphere of this planet - let's assume 100% Nitrogen, with the molecules evenly-spaced, and completely at rest.  There's no weather, hurricances or movement. The number of air molecules is approimately 5^44th, or 5 followed by 44 zeroes [^1]. Imagine them to bounce exactly like perfect hard spheres, like billiard balls.

Now imagine the tiniest piece of meteor dust comes by. It sets one molecule into motion, soon to collide with at least one other.

The question is, if you know the incoming angle of the meteor dust, what direction will the nitrogen molecule on the completely opposite side of the planet be moving once the motion gets around to it ?

Your answer should be very tentative if you're thinking about this!

How heavy was the dust ? Do you only know to the nearest .01 of a gram or to .00001 ? You may not ever have enough information about that dust and its angle in order to say what happens after the uncertainty becomes amplified over the Billions of future collisions that need to occur.

With air molecules at room temperature undergoing 7.2x10^9 collisions per second, and 10^44 air molecules undergoing collisions, there are more collisions between air molecules on this planet  in a single second (7.2x10^53) than there are milimeters across the entire universe (10^29) - by a factor of over a billion, billion times!

Now imagine that instead of one speck of meteor dust, you have an entire flap of a butterfly's wing...

## Why Weathermen ~~Are Always~~ Will Always Be Wrong

The Rabbit and Fox equation, in its simplicty, shows us how few variables we need in order to have total unpredictability and chaos. In reality, there are always more variables in play, and so the problem of having an accurate initial assessment is an unsolvable one.

Earlier I alluded to cream swirling into coffee. Notice how small shapes are folded into larger shapes, which fold over and over and over. Imagine a dartboard, on which the scoring regions were not in big slices of pie, but infinitely folded like the coffee swirls. You couldn't just **see** what point was scored from afar, you'd have to zoom in **infinitely close**. What a pain that would be!

For the Fox and Rabbit game, you could predict long term behavior if you knew the initial population exactly. Now, imagine In Real Life, trying to do a Rabbit Census, and try to imagine the hilarity of that.

Weathermen are always wrong because "Only a Fool would try to perform a Rabbit Census". Even if you could count rabbits in a forest, can you count air molecules ? Even temperature is a big ginormous estimate corresponding to the *average* velocity of an air molecule in a large number of molecules. You don't know anything about the exact distribution of speeds and locations, and you couldn't measure it without changing the values, so you really do not know what you are starting with.

Remember, even if the rules of Nature were as simple as the rules for the Rabbits and Foxes, without an **exact** measurement of the initial conditions, you could only estimate short term behavior based on the rules. You'd have no means of knowing after 2 clock ticks, whether you are in a 3-repeating cycle coming back to the first tick value, or you are in the Stock Market Outcome Class.

While we may asymptotically approach better weather prediction, Nature has given us a time-horizon beyond which we are blind. It may be 7 days, it may be 10. But we're not limited by our lack of computing power- but more the fact that we can't measure precisely enough to know what point to start the simulation at.

[^1]: Mass of air molecule: 5.6x10^-26 kg, Mass of atmosphere 5.15×10^18 kg,
