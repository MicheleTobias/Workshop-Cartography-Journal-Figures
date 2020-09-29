# Cartography for Map Figures in Academic Journals & Books

Author: Michele Tobias

**This workshop is a work in progress.  Please check back later for the finished product.  Target completion date: December 2020**

This workshop will discuss approaches and guidelines for creating map figures for academic books and journals.  We'll use QGIS to illustrate one workflow in a graphical GIS.  This general workflow can be applied to other graphical GIS programs or even programming environments.

How are map figures different from other maps you might make?
resticted size
restricted color pallette


KEY CONCEPTS: 
* MINIMIZE! Keep only what's absolutely necessary
* What do I want my reader to learn from this map? How does it support the claims I make in my text?
* Does my map communicate well?

# Michele's Process


## 1. What Story Are You Telling?

The very first thing you need to do is understand what story you need to tell.  Why are you making this map?  What should the reader learn from this map.

Let's look at some real life examples.  I made a set of maps for a professor in Sociology.  He was writing a book about cinemas in Paris.  He needed readers to understand the location of the cinemas he wrote about in relation to other key features like subway lines and streets.  So that's the story - where are the cinemas in relation to the streets and subways?

## 2. Data
What data do we need to tell our story?  In the case of the Paris cinemas, I needed the cinema locations, the streets, and the subway lines.  In some cases, this is easier said than done.  Data processing is pretty common at this stage to issolate just the pieces of a data you need or to convert the data into a different format.  For the cinemas, I had addresses and those needed to be geocoded to create points.  I had OpenStreetMap data for the line work, but that includes a lot more lines than I needed so I had to subset to the larger roads (excluding foot paths) and subways.

## 3. Journal Art Specifications
We still haven't made a map yet.  We need to know what the publisher specifications are before we start anything else.  There's no point in creating a beautiful map at full page size when you won't be able to use it in the final product.  Publisher specs are often rather restrictive.  This will drive much of your creativity but also provide a decent amount of frustration.  Be prepared.  Additionally, if you submit art that doesn't follow the publisher specs, the art staff may alter your file.  This is something to avoid as much as possible for maps because the art staff won't necessarily understand some of the subtleties like how resizing a map would alter it's legend or that cartographers can get very picky about label placement.

Let's look at one real-world example: [Nature's Journals](https://www.nature.com/nature/for-authors/formatting-guide)

I look for the following pieces of information:

1. **Maximum figure size:** 89 mm (spans 1 column) or 183 mm (spans 2 columns) wide and maximum 247 mm high.  *This means our figures should be one of the two width dimensions and not a variation.  We can have whatever hight we need up to the maxium.*
1. **Aspect ratio restrictions:** none listed. *That's fine because we have very specific dimensions.*
1. **Color guidance or restrictions:** Color figures have a monetary charge; uses four-color reproduction (they use cyan, magenta, yellow, and black (CMYK) inks for printed material)
1. **Font guidance or restrictions:** none listed for maps.  *Some journals will specify a particular font or that the font must be an open font. I suggest sticking with something fairly common unless you really need a special font.*
1. **Format and quality:** electronic format, suggesting .JPG "at good enough quality to be assessed by referees".  Eventually, you'll submit higher quality figures for publication but not for the review process.  *Some journals will specify things like .eps files or .tiff of a certain dpi and may also expect certain color encoding (CMYK, RGB, etc.).  If it's not specified, I will usually use 600 dpi. Note that if you can't supply a .eps file, a plain .svg is usually readable by Adobe Illustrator with minimal issues.*
1. **Other limitations:** Nature dos not want figures to have separate panels within the same figure unless they are related to each other. This means we can only have one map per figure unless they are related.


Often you will need to piece together specs for maps from different sections of the author instructions.  Parts of the figure specs, photography, or graphs may apply.


## Page Set Up
Once you know your art specs, set up your page in the print composer/layout manager

## Background Data
Don't use "base maps" or pre-assembled data tiles unless you have to.  Vector data is better for clear line work.  
Almost NEVER use an airphoto.
What does the reader need to understand your map?
Licensing - Can you cite your data?  Are you allowed to publish it?


## Fonts
8 pt or larger

## Color Hierarchy
... grays vs. blacks


## Legends & Other Map Elements



# Hands On

## Download Data
## What story are you trying to tell?
What's the story? What should readers learn from this map?
What data do you need to tell that story effectively?
## Publisher Specs 
make up something plausible to work with for our project
## Setting Up Your Map Project: Assemble all the data
Open QGIS
Load in data
## Set up the print layout page
## Style the data
## Make adjustments
## Export your map



# Resources
Inkscape - for fixing fine details
Cartography conventions for things like rivers and labels

[QGIS Training Manual for Map Composer](https://docs.qgis.org/3.10/en/docs/training_manual/map_composer/index.html)

[USGS Topographic Symbols](https://pubs.usgs.gov/gip/TopographicMapSymbols/topomapsymbols.pdf?utm_source=twitter&utm_medium=social&utm_term=61da4941-22fe-4c68-80b1-b4d070f25f17&utm_content=&utm_campaign=usgs)
