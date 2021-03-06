## HOW TO CODE: SIMPLE DATA: UNIVERSITY OF BRITISH COLUMBIA (UBCx - Edx)

How To Code: Simple Data, is the first 7 week module from the  [**MICROMASTER - Software Developer** from **University of British Columbia**](https://www.edx.org/course/how-code-simple-data-ubcx-htc1x).

## About this course 

**Course Description**

This course takes a unique approach, focusing on a systematic programming method rather than restricting learners to any one specific programming language. This practical approach will allow you to apply your skills and creativity more widely and to program well in any language.

The course is part of the [**Software Development MicroMasters Program**](https://www.edx.org/micromasters/software-development) and presents a core design method with a focus on numbers, strings, images and lists.

You will learn techniques to:

1. Develop program requirements
2. Produce programs with consistent structure that are easy to modify later
3. Make your programs more reliable by building tests as an integral part of the programming process.
4. This course concludes with the design of a simple interactive game.
5. Learners who enroll in the Verified track will receive staff grading for the course project and increased interaction with the instructor and staff.

What you'll learn:
1. How to represent information as data
2. How to focus each part of your program on a single task
3. How to use examples and tests to clarify what your program should do
4. How to simplify the structure of your program using common patterns
5. Recognize and represent more complicated information


## MODULE 2: HOW TO DESIGN DATA - COND EXPRESSIONS

In the first lesson from **module 2: How to Design Data - Cond Expressions**, we learn how to use the the multi-armed conditional (three in this case), testing some code and checking if it was writen correctly. 

The code given was:

>  (define (aspect-ratio img)<br>
>      (if (> (image-height img) (image-width img))<br>
>          "tall"<br>
>          (if (= (image-height img)(image-width img))<br>
>              "square"<br>
>              "wide")))<br>
>             <br>

If we check the code above, we will see that are some wrong multi-armed conditional, because the second IF will be only use IF the first conditional was false, but this ins´t what we want. We want a multi-armed conditional with three conditionals. With that in mind was made some corrections in the code.

## HOW TO FOMR COND EXPRESSIONS:

> (cond [< Expression1 > < Expression2 > ] <br>
>     ...)

1. The *Expression1* is the question;
2. The *Expression2* is the anser;
3. Each question must evaluate to a boolean. The last question can be *Else*.

## THE CORRECT CODE 

> (define (aspect-ratio img)<br>
>   (cond [(> (image-height img) (image-width img))"tall"]<br>
>         [(= (image-height img)(image-width img)) "square"]<br>
>         [else "wide"]))<br>
