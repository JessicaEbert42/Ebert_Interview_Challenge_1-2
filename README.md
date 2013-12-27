Ebert_Interview_Challenge_1-2
=============================
Scenario 2: Build a Test that performs a search meeting the following criteria. 
    State = VIC, Suburb = Richmond, Property Type = Flat, Max Price = 500,000. 
Verify the listing number results returns and that you actually are searching in this proper State, Suburb.


This is the cosest to working that I was able to achieve with my current resources.
I ran into some interesting quirks that I would very much like to learn more about.

When trying to select apartment (flat was not an option) from the dropdown checklist, I was only able to
select the checkbox by using a hardcoded id for the checkbox value.  This is something that I would normally avoid in
order to create something much more flexible.  I left in an unworking attempt that seems to align more with the 
visual setup of the page, i.e. using dropdown selects, as an example of my work.

I ran into this same problem with Max price, but was unable to find a workaround for this selection.

In order to compare compare the results, I ran into some more problems and ended up just using the header in the
results that says what region it is searching in.  If I had a better understanding of how the page was laid out,
addressing elements in Cucumber, and more time, I would love to figure out how to look at the structure of each listing
to make sure that it is in Richmond, VIC.

