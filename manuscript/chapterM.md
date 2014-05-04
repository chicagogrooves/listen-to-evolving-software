# Mathematical Foundations

## Types of Growth

(Image: Plot of n/log n/n2 )

The money in your bank account, the number of lines of code in your code base, the speed between two objects freefalling towards each other, the Gross Domestic Product of a nation.. These are natural systems that grow over time.

Not everything grows 'over time'. Consider the amount of time to put some out-of-order documents in order. If you have a particular way (called an algorithm) of sorting documents, and want to see how good your algorithm's behavior is, you may see how the time it takes to sort grows with the size of the list.

Some possibilities are: 

  * If you sort a set that's 10 times larger, it takes you 10 times longer to do it. 
  * If you sort a set that's 10 times larger, it takes you 100 times longer to do it.
  * If you sort a set that's 10 times larger, it takes you 3.05 times longer to do it
  
(The last one may surprise you, but in fact many sorting algo's in computers behave more or less like this)


### Growth Classes - Categories of Similar Growth

These possibilities can be chunked into several ranges, called Growth Classes. In computers, this gets referred to as Big-O notation, and provides a framework for talking about how fast things grow, whether over time, the size of the input, or whatever.

The main Growth classes you'll encounter are:

  * Linear growth
  * Squared growth
  * Logarithmic growth
  * Exponential growth
  
 Let's use our intuitive notions to understand these growth classes. 

 * If you are filling a bucket from a garden hose - you need twice as long for twice as large a bucket. That is Linear Growth. 

 * If you are tending a square garden, a garden of double the side-length will take you 4 times as long to tend. This is Squared Growth.

 * If I tell you I'm thinking of a number between 1 and 10, and let you guess, telling you "too high" or "too low" each time, and we compare the number of times you have to guess to the size of the range, this is Logarithmic Growth (more on this later).

 * And if the growth rate of a country - number of babies born per year - depends on its current size, then this is Exponential Growth.

Linear and Squared Growth need little explanation, and maybe Exponential Growth makes sense as well (we've heard of population explosions before)..

But Logarithmic Growth is subtle. It grows less quickly than a corresponding linearly-growing thing. It's more like - if you're building a pyramid of blocks, the pyramid does not get twice as high if you add twice as many blocks, because the base is wider. If you're guessing numbers between 1-100, vs 1-101, there's a good chance it'll take the same number of guesses. In this sense it's almost the opposite of squared growth - I'll have to double the size of the range to ensure that, on average, you have to make a single extra guess. 

For things that take a long time, Logarithmic Growth is what we want, since eventually the marginal amount of time per new item is close to zero ! However, for things that we want to grow, like our bank accounts, Exponential Growth fits the bill quite nicely :)

### Short-run vs Long-run

Within a Growth Class there is room for variation. In the bucket-filling scenario we used to describe Linear Growth - the rate of bucket-filling will be small if the tap is barely open, or high if the tap is fully on. But in the long run, ANY process undergoing Linear Growth will be overtaken by ANY process experiencing Exponential Growth. 

            Logarithmic < Linear < Squared < Exponential

What "the long run" means depends on the situation. You may be surprised to hear, that even with today's low interest rates, that your bank account is in the Exponential Growth class ! It may only grow 1% per year, but since you earn interest on interest, it is in fact exponentially growing. To speed up time a little bit, ponder this - if you get 1% better at something every day for an entire year, by what factor are you better at the end of the year ? 

![1.01 to the 365th power is 38](http://2.bp.blogspot.com/-1MDJwzyC7Hg/UQFE4IcSrUI/AAAAAAAAKCY/aZupk4YtHVM/s1600/add-up.jpg)

You'd be 37.8 times better imporving only 1% per day ! Too bad your bank account probably will not compound for 365 straight years.  For comparison, if your bank account experienced only Linear Growth, you would have merely 3.65 times the amount of money. This is the difference between "simple interest" and "compound interest". While it's true that in the short term, a 5% simple-interest account will be more profitable, a 1% compound interest account will eventually overtake. 

This is the essence of Growth Classes - they are only truly useful "in the long run" to describe advantages. But, critically, by understanding the Growth Class a certain process is in, we gain the ability to reason about the long term behavior of a system. If all you know is the Growth Class of a system, as determined by measurements, you may be able to model of the insides of the system merely by analogy with something else in the same Growth class. A single measurement of a system may reveal very little, but the story of its size over time can affirm, or even contradict existing attempts to model the system. And so Growth Class is a very fundamental description of a system indeed.

### Limits of Explanatory Powers

In the marketplace, some lucky companies experience exponential growth in their revenues or stock prices. This is considered a Very Good Thing by investors and owners alike ! The meteoric rise of such stocks as Google, follows a predictable pattern, up to a point, but so far, every meteorically rising company has tapered off in the long run. This seems to imply that the Exponential Growth phase is an unstable one. 

Take the story of the 64-square chessboard on which one grain of wheat is placed on the first square, two grains on the second square, and so forth until it would require more wheat than the entire world produces in a year to cover even half the chessboard. 

Eventually an exponentially growing system will run into some natural limits, exhaust the resources available, or collide with another exponentially growing system. Growth Classes are most useful in predicting a system's behavior in the long run, and in isolation. With many independent entities competing in an environment, concepts from other parts of Mathematics may be more useful - for example, Dynamical Systems

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

Let's take a picture of the atmosphere of this planet - 100% Nitrogen, with the molecules evenly-spaced, and completely at rest.  There's no weather, hurricances or movement. The number of Nitrogen molecules is approimately 10^35th, or 10 followed by 35 zeroes. Imagine them to bounce exactly like perfect hard spheres, like billiard balls. 

Now imagine the tiniest piece of meteor dust comes by. It sets one molecule into motion, soon to collide with at least one other. 

The question is, if you know the incoming angle of the meteor dust, what direction will the nitrogen molecule on the completely opposite side of the planet be moving once the motion gets around to it ? 

Your answer should be very tentative if you're thinking about this! 

How heavy was the dust ? Do you only know to the nearest .01 of a gram or to .00001 ? You may not ever have enough information about that dust and its angle in order to say what happens after the uncertainty becomes amplified over the Billions of future collisions that need to occur.

Now imagine that instead of one speck of meteor dust, you have an entire flap of a butterfly's wing...

## Why Weathermen ~~Are Always~~ Will Always Be Wrong

The Rabbit and Fox equation, in its simplicty, shows us how few variables we need in order to have total unpredictability and chaos. In reality, there are always more variables in play, and so the problem of having an accurate initial assessment is an unsolvable one.

Earlier I alluded to cream swirling into coffee. Notice how small shapes are folded into larger shapes, which fold over and over and over. Imagine a dartboard, on which the scoring regions were not in big slices of pie, but infinitely folded like the coffee swirls. You couldn't just **see** what point was scored from afar, you'd have to zoom in **infinitely close**. What a pain that would be! 

For the Fox and Rabbit game, you could predict long term behavior if you knew the initial population exactly. Now, imagine In Real Life, trying to do a Rabbit Census, and try to imagine the hilarity of that. 

Weathermen are always wrong because "Only a Fool would try to perform a Rabbit Census". Even if you could count rabbits in a forest, can you count air molecules ? Even temperature is a big ginormous estimate corresponding to the *average* velocity of an air molecule in a large number of molecules. You don't know anything about the exact distribution of speeds and locations, and you couldn't measure it without changing the values, so you really do not know what you are starting with.

Remember, even if the rules of Nature were as simple as the rules for the Rabbits and Foxes, without an **exact** measurement of the initial conditions, you could only estimate short term behavior based on the rules. You'd have no means of knowing after 2 clock ticks, whether you are in a 3-repeating cycle coming back to the first tick value, or you are in the Stock Market Outcome Class. 

While we may asymptotically approach better weather prediction, Nature has given us a time-horizon beyond which we are blind. It may be 7 days, it may be 10. But we're not limited by our lack of computing power- but more the fact that we can't measure precisely enough to know what point to start the simulation at.
