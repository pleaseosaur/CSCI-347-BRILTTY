# CSCI-347-BRILTTY
BRLTTY script assignment for CSCI 437 Winter 2024


## Overview
In this assignment, you will learn about writing bash scripts, parsing files, and regular expressions. You will also learn about the system configuration file of an assistive technology.



A refreshable braille display Links to an external site. is a computer hardware which has a series of refreshable, or fluid, braille cells on its surface. Most displays contain a single line with anywhere from fourteen to eighty braille cells. Instead of small holes in a piece of paper, each braille dot in these cells is represented by a tiny pin which can be raised or lowered. This allows individuals who are blind to read information in braille by running their fingers over the refreshable braille cells and then advancing the display to show the next set of characters.

Screen readers Links to an external site. are assistive technology that are frequently used by people with visual impairments or learning disabilities. It is also helpful for people learning English (or another language) and for the elderly. Typically, a screen reader will start at the top of a website or document and read any text (including alternate text for images).

This video Links to an external site. illustrates both screen reading technology and refreshable braille display.



BRLTTY Links to an external site.  is a background process providing access to the console screen (when in text mode) for a blind person using a refreshable braille display. BRLTTY expects to find its configuration file in "/etc/brltty.conf”. Each configuration entry consists of a keyword followed by its operand. An arbitrary amount of white space, (blanks and/or tabs), may occur before the keyword, as well as before and after the operand. Keyword processing is not case sensitive.



## Requirements
Write a bash script which will use regular expressions to perform the following function:

It will run like so:

>./brltty.sh brltty.conf

The script should parse the brltty configuration file Download brltty configuration file and print information about the braille refreshable display or the screen reader settings. You will work with a group of 2-3 students, each group will be assigned a number. Based on your group number, your script should find the corresponding information.

### Groups with an odd number
A deaf blind person can use a computer, if it is accessible, using Braille. Create a script that summarizes the available Braille settings on the linux lab machine The script should report the following:

The number of braille-drivers
The list of braille-devices
The number of text-tables
The number of contraction-tables

## Instructions
Your implementation must be named brltty.sh
Implement the requirements
Test your code with the conf file
Check the results to make sure that your script is producing the correct output Download output.
Hint: grep Links to an external site. and awk Links to an external site. will be useful in parsing the file.
Explain the brltty settings (e.g., contraction tables Links to an external site., key tables Links to an external site., etc) assigned to your group and describe them in detail, e.g., usefulness, and possible values.

## Submission
Submit the following to Canvas:

1- Upload your file brltty.sh

2- A doc file with your explanation to the brltty settings.

One submission per group is required. Be prepared to explain your solution to the class.
