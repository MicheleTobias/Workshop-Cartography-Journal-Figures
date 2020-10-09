# Cartography for Map Figures in Academic Journals & Books

Author: Michele Tobias

**This workshop is a work in progress.  Please check back later for the finished product.  Target completion date: October 27, 2020**

This workshop will discuss approaches and guidelines for creating map figures for academic books and journals.  We'll use QGIS to illustrate one workflow in a graphical GIS.  This general workflow can be applied to other graphical GIS programs or even programming environments.

## Prerequisites
In this workshop, I will assume you have an introductory understanding of:
* Common spatial data formats (raster and vector, specifically)
* Desktop GIS in general, and QGIS specifically.  My [Intro to Desktop GIS with QGIS Workshop](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS) is a good introduction or resource if you need a refresher.

## Prepare for this workshop:
* Download and install [QGIS](https://qgis.org/) - a free and open source GIS that works on Windows, Mac, and Linux
* Download the workshop data from the [online repository](https://ucdavis.app.box.com/folder/123942289025) - note that you can download a zip of the folder's contents by clicking on the 3 dots button in the upper right corner.  You do not need to be a UC Davis affiliate to download this data.

# Introduction
When you're flipping through a book or journal article, you probably look at the pictures first.  Because figures draw our attention, they can be an incredibly important tool for conveying the message of your text. Communicating clearly within the restrictions of map figures require a specific set of skills that is a little different from making larger maps.

How are map figures different from other maps you might make?
* resticted size
* restricted color pallette
* limited in number
* citations & license for data you use

**Key Concepts:**
* MINIMIZE! Keep only what's absolutely necessary
* What do I want my reader to learn from this map? How does it support the claims I make in my text?
* Does my map communicate well?

In this workshop, we'll learn strategies and steps to take in making map figures for publications.

------------------------------------------------------------------------------------------------------------------------
# Steps in Making a Map for a Journal Figure

## 1. What Story Are You Telling?

The very first thing you need to do is understand what story you need to tell.  Why are you making this map?  What should the reader learn from this map?

Here's one real life example.  I made a set of maps for a professor in Sociology.  He was writing a book about cinemas in Paris.  He needed readers to understand the location of the cinemas he wrote about in relation to other key features like subway lines and streets.  So that's the story - where are the cinemas in relation to the streets and subways?

<!---![Alt Text](/images/StoryTelling_SmoodinBook.png)--->
<img src="/images/StoryTelling_SmoodinBook.png" width="400"/>

Map of incident locations published in Smoodin, E. 2020. *Paris in the Dark: Going to the Movies in the City of Light, 1930–1950.* Duke University Press.

## 2. Data
What data do we need to tell our story?  In the case of the Paris cinemas, I needed the cinema locations, the streets, and the subway lines.  In some cases, this is easier said than done.  Data processing is pretty common at this stage to issolate just the pieces of a data you need or to convert the data into a different format.  For the cinemas, I had addresses and those needed to be geocoded to create points.  I had OpenStreetMap data for the line work, but that includes a lot more lines than I needed so I had to subset to the larger roads (excluding foot paths) and subways.

## 3. Journal Art Specifications
We still haven't made a map yet.  We need to know what the publisher specifications are before we start anything else.  There's no point in creating a beautiful map at full page size when you won't be able to use it in the final product.  Publisher specs are often rather restrictive.  This will drive much of your creativity but also provide a decent amount of frustration.  Be prepared.  Additionally, if you submit art that doesn't follow the publisher specs, the art staff may alter your file.  This is something to avoid as much as possible for maps because the art staff won't necessarily understand some of the subtleties like how resizing a map would alter it's scale bar or that cartographers can get very picky about label placement.

Let's look at one real-world example: [Nature's Journals](https://www.nature.com/nature/for-authors/formatting-guide)

I look for the following pieces of information:

1. **Maximum figure size:** 89 mm (spans 1 column) or 183 mm (spans 2 columns) wide and maximum 247 mm high.  *This means our figures should be one of the two width dimensions and not a variation.  We can have whatever height we need up to the maxium.*
1. **Aspect ratio restrictions:** none listed. *That's fine because we have very specific dimensions.*
1. **Color guidance or restrictions:** Color figures have a monetary charge; uses four-color reproduction (they use cyan, magenta, yellow, and black (CMYK) inks for printed material). *If they charge for color, try to make a grayscale map.*
1. **Font guidance or restrictions:** none listed for maps.  *Some journals will specify a particular font or that the font must be an open font. I suggest sticking with something fairly common unless you really need a special font.*
1. **Format and quality:** electronic format, suggesting .JPG "at good enough quality to be assessed by referees".  Eventually, you'll submit higher quality figures for publication but not for the review process.  *Some journals will specify things like .eps files or .tiff of a certain dpi and may also expect certain color encoding (CMYK, RGB, etc.).  If it's not specified, I will usually use 600 dpi. Note that if you can't supply a .eps file, a plain .svg is usually readable by Adobe Illustrator with minimal issues.*
1. **Other limitations:** Nature dos not want figures to have separate panels within the same figure unless they are related to each other. This means we can only have one map per figure unless they are related.


Often you will need to piece together specs for maps from different sections of the author instructions.  Parts of the figure specs, photography, or graphs may apply.


## 4. Page Set Up
Once you know your art specs, set up your page in the print composer/layout manager.  I typically do this immediately after loading my data, or even before. You want to assemble your map at the right size from the start to avoid having to re-do steps.

## 5. Design & Layout

### Fonts
For readability, I suggest 8 pt or larger font.

How many fonts? I use **one, maybe 2** in a journal figure map. Bold, slant, itallic, and light variants of one font are more than enough options *if I need them at all*.  Simplicity is key.

Which font?  It depends.  Pick a font that is **readable at small sizes**.  Typically, I find sans serif fonts (think Calibri) to work better than serif fonts (think Times New Roman) in small maps, but that's not a rule.  Calibri is a good standard choice available on most computers.  My current favorite is an open font called [Glacial Indiference](https://www.fontsquirrel.com/fonts/glacial-indifference) which has a bit of a mid-century modern vibe, but just because I like it doesn't mean it's always a good choice.  Remember to ask yourself: Does this communicate the message well?

Some font tricks that can help: adjust the line spacing and kerning (the distance between the letters) to tighten up labels and make them take up less room or space them out to fill a larger space.  Don't go crazy, but adjusting the spacing is sometimes helpful.

Be careful when downloading fonts.  Be sure you're using a reputable source.  Also, some fonts may not have all the characters you need, so be sure to check that they include the punctuation and international characters that your map requires.

### Color Hierarchy
Even when you're restricted to a gray-scale color palette, you can make use of visual hierarchy.  

Vary the amount of black in your grays (10% black is pretty light vs. 90% black is almost black).  

Vary your line width or the size of your points.  

Save black for the most important items in your map - the things you need the reader to notice.

<img src="/images/VisualHierarchy_SmoodinBook.png" width="600"/>

Reference map published in Smoodin, E. 2020. *Paris in the Dark: Going to the Movies in the City of Light, 1930–1950.* Duke University Press.

If you use color, save bright, saturated colors for the elements that need to stand out.  In the example below, I used grays and a muted blue for background information and for the important information (the railroad line variants) I used bold, saturated colors (that also print well in grayscale).  This image was made for a journal article with several similar maps, but this particular one was not needed because we decided we didn't need to discuss this particular area of the study in the paper.

<img src="/images/LimitedColor_Railroad.png" width="400"/>
An example of a limited color palette using bright colors sparingly to draw attention.

### Background Data
Remember Step 1 where we discussed our story?  I bet "Google Maps" or "All of OSM" wasn't a part of that story.  My personal preference is to not use "base maps" or pre-assembled data tiles unless I absolutely have to.  Vector data is better for clear line work and often "base maps" contain too much information.  They can also be difficult to cite properly when the data has been re-processed by a commercial company.

I almost NEVER use an airphoto.  I love airphotos. They are fun to look at because they have a lot of information in them, but that's the problem.  We need simplicity and airphotos are not simple. Polygons in our map often cover up the airphoto, so that kind of defeats the purpose.

### Figure Caption
One special thing about figures in journal articles is that they get captions!  Captions are text that explains why you put this image in the article and what the reader needs to know about it.  Caption text can sometimes take the place of a map legend.  For example: *Figure 1: Study site locations. Black squares indicate sites treated with experimental weed killer and open circles indicate control sites.*

Depending on the journal, the figure caption should contain the citation in the journal's preferred style for the data you used and the cartographer's name.

<img src="/images/FigureCaption.jpg" width="400"/>

Be prepared to cite the data you used and the cartographer's name in the figure caption, as well as give any contextual information that the reader will need to know to interpret the map. (Myles, C., M.M. Tobias, & I. McKinnon.  2021. “‘A big fish in a small pond’: How Arizona wine country was made” in *Agritourism, Wine Tourism, Craft Beer Tourism: Local Responses to peripherality through tourism niches.*  M. Giulia Pezzi, A. Faggian, N. Reid, eds.  Routledge.)

### Map Elements
You may have learned in your introductory GIS class that all maps need a title, legend, scale bar, and north arrow.  That was a lie.  Well... let me explain.  We talked earlier about identifying your story and tailoring your map to communicate well.  Some map figures will need some of these things.  Others will not.  

**Title:** You'll almost never need a title (that's what the figure caption is for).  

**Legend:** If your style choices are obvious, you don't need a legend.  Study site locations marked with bold black dots, clearly labeled, probably don't need a legend.  Legends should show the elements a reader woudn't figure out on their own. 

**Scale Bar & North Arrow:** If your map shows the entirety of a recognizable geographic element, such as a continent, you probably don't need a scale bar and if you haven't rotated the map, you don't need a north arrow.  

When you need to add map elements to the layout, please keep it simple and subtle.  Your reader will find the north arrow if they need it. It doesn't need to scream at them.   

Only add the elements that help your reader understand the map.  Eliminate everything extra.  When it doubt, explain it in the figure caption.

<img src="/images/SelectiveMapElements_AZ_Wine_businesses.png" width="400"/>

A map figure with selected elements - notably it does not need a scale bar and north arrow - published in Myles, C., M.M. Tobias, & I. McKinnon.  2021. “‘A big fish in a small pond’: How Arizona wine country was made” in *Agritourism, Wine Tourism, Craft Beer Tourism: Local Responses to peripherality through tourism niches.*  M. Giulia Pezzi, A. Faggian, N. Reid, eds.  Routledge.

## 6. Image Export
Refer to your publisher specifications.  Export the format they ask for using the parameters they want.  If it's a raster format (.jpg, .png, .tiff), export the image in the highest resolution they ask for.  

Often you will submit lower resolution images for the review process and higher quality images for the final submission.

Caveats for the final submission: If they ask for 300 dpi or less, I'm still sending 600.  If they don't specify an image format or resolution, I default to 600 dpi .tiff or .png. If they ask for a .ai or .eps file and you don't have access to Adobe Illustrator to create that, a plain .svg, or a .pdf will also work.  

## 7. Licensing 
Can you cite your data?  Are you allowed to publish it?  

More and more often, publishers are asking for proof of their ability to publish the data legally.  This means that the data either need to be open licensed or you need a document giving you permission to use the data in a publication.  You decide the license for the data you create.  Where people typically get hung up is on data they download from the internet.  When you do this, look for the data's license statement, readme file, or metadata to find the license and save that information alongside the data files.  I'll put relevant license information, source, and date I downloaded it in a .txt file in the same folder with the data.

Some journals are also asking who made the maps you include in your submission to avoid reproducing images that belong to someone else - i.e. maps you find online and want to use. 


-----------------------------------------------------------------------------------------------
# Hands On
To gain experience with the concepts we just talked about, let's make a map!  

## What story are you trying to tell?

### The Premise of this Exercise
Let's pretend we want to a map for a journal article about the underpinnings of the distribution of cryptozoology sightings in the northeastern US and southeastern Canada, focusing on lake monsters, creatures reported to live in lakes that are mainly known from folklore and typically take on the the shape of extinct or extraordinarlily large living reptiles.  You want your readers to understand the relationship between the monster locations and also their location on the planet.  In our imaginary scenario, we plan to submit our paper to one of the Nature journals.

What's the story? What should readers learn from this map? What data do you need to tell that story effectively?

The story I plan to tell is where are these monsters reported to live? What are their names? For reference, what lakes and states or provinces are they in?  The story you want to tell might be different, so feel free to make adjustments as needed.

## Download Data
If you haven't already, download the workshop data from the [online repository](https://ucdavis.app.box.com/folder/123942289025).

The data we have to work with today is:
* Lake Monsters - LakeMonsters.gpkg - locations of lake monsters; global distribution
* Lakes - Lakes_GreatLakes-Area.gpkg - a clip of the Natural Earth Data lakes dataset for the Great Lakes and areas adjacent
* States - US_CAN_Admin1.gpkg - a clip of the Natural Earth Data states and provinces data for the US and Canada (I'm going to refer to these as "states" for simplicity, but I want to acknowledge that this includes Canadian provinces as well.)

Geopackage (.gpkg) is a single file, open vector format. We're using it today because it's one file per dataset (unlike Shapefile), which makes data management so much easier.  See the README.txt file that comes with the data download for more details and sources of the data.

### Data Processing
We'll be working with an international dataset of locations of lake monsters, the most famous of which is arguably Nessie who supposedly lives in Loch Ness in Scotland.  This dataset was assembled from [Wikipedia's List of Lake Monsters](https://en.m.wikipedia.org/wiki/List_of_lake_monsters).  The lake names were geocoded (you can find the R script that I wrote to process the data in the [r_scripts](/r_scripts) folder of this repo), then exported to a geopackage file.  Why did I process this data for you?  It took a few hours to do and requires skills we are not focusing on in this workshop.  

<!---
Other Possible data options
1. Bigfoot sightings - [data](http://bfro.net/GDB/default.asp) and [map](http://thumbnails.visually.netdna-cdn.com/squatch-watch-92-years-of-bigfoot-sightings-in-the-us-and-canada_5238386654cce.png)
1. Davis mailboxes - [Yolo Co Open Data Portal](https://yodata-yolo.opendata.arcgis.com/)
1. 
--->

## Publisher Specifications 
Let's assume this map is for an article in one of the Nature journals, so all of the specifications we discussed earlier will apply.

Most importantly:
* **Size**: 183 x <240 mm
* **Format**: .jpg
* **Other**: No divided images unless the sections are related


## Setting Up Your Map Project: Assemble all the data
1. Open QGIS and start a new project.

2. Load in the data - Lake Monsters, Lakes, Admin 1 boundaries (states). All of the data we're working with today is vector data.

<img src="/images/LoadData.png" width="600"/>
Note that the colors of the data are selected at random, so your data will probably look different.


3. Save your project file.

4. Set your project's projection to North America Albers Equal Area Conic (ESRI: 102008). I'm using the first transformation it offers me because that one is most appropriate for the area we'll be mapping today. Save again.

## Set up the print layout page
In QGIS, the print layout interface is where you compose your map.  Typically, I will set up my layout before I start styling data (mainly because I just looked up my art specs and don't want to have to go find them later when I'm ready to finish up the map).

Open a new layout:
1. Project Menu -> New Print Layout
2. In the window that pops up, give your new layout a name. I'll call mine "Nature Specs" so later I'll know this layout was for my Nature submission with this data. Click *OK*.
3. A new blank layout window should now be open.

<img src="/images/NewLayout.png" width="600"/>

Set the page size:
1. Right click anywhere on the white page in the middle of the window
1. Select *Page Properties* from the menu
1. On the panel on the right side of the screen, set the *Size* drop down to *Custom*, then set the *Width* to 183 mm and the *Height* to 240 mm for now - we'll shrink this later as needed. Note: there is a units drop down to the right of the *Width* and *Height* options.
1. Click the save button.  This saves the whole project, not just the layout.

Now that this is set up, we can close this window and come back to it after we've styled the data.



## Style the data
We've decided on our story, loaded up our data, and set up our page.  Now it's time to style the data.

First, let's center our view on the Great Lakes area using the zoom tool. It doesn't have to be perfect.  We will adjust later.

<img src="/images/ZoomToGreatLakes.png" width="600"/>
Again, these colors do NOT communicate well at all.  We'll change it soon.


Let's open the *Layer Styling* Panel. This is a toolbar that can be docked on the side of the window and allows us to make changes to the layer styling with live updates (so we don't have to keep clicking to update).
1. Click the *View* menu at the top of the QGIS window
1. Choose *Panels*
1. Check *Layer Styling* - there should now be a panel on the right side of your screen.
1. Make sure the box next to *Live update* is checked.  You can uncheck this if you don't want it to update choices automatically, for example, if you're working on a big file and it's slow to update as you work.

### States
Let's start with the largest background layer.  This will have a big impact on how we style the other layers and will help set the tone for how we work.
1. In the *Layers* panel (table of contents) on the right, click on the States layer (*US_CAN_Admin1*).  The options in the *Layer Styling* panel on the right should now reflect the current state of the States layer.
1. In the *Layer Styling* panel, click on the words *Simple fill* - this lets us access the details of the way the state polygons are displayed.
1. Click on the colored box for the *Fill color*.
1. I want to make the fill of the states white, so in the *HTML notation* box, I will specificy *#ffffff* as the color (6 Fs).  You could pick any color you like from the various color selector methods.  When you're done, click the back buton (blue triangle near the top of the panel) to go back to the *Simple fill* options.
1. For the *Stroke color* (the outline of the polygons), I want to pick a shade of gray.  Click in the color box next to *Stroke color*.  In the color sliders, you can move the H (for hue) and S (saturation) sliders to 0, and the V (for value) to 80, or you can put *#cbcbcb* in the *HTML notation*.

The stroke on the states might look a little light and might be confusing to the eye because the ocean color is the same color as the fill.  Let's change the background color to make the ocean color easier for our eyes to understand:
1. On the *Project* menu, select *Properties*.
1. In the *General* tab on the right side of the window, click on *Background color*.  Change it to the same color as the stroke of your states.  Click *OK* in the color interface and *OK* in the Options interface.

<img src="/images/Style_States.png" width="600"/>

We've got more work to do, but this is already starting to look better!

### Lakes
Let's work on the lakes next.
1. Select the lakes file (*Lakes_GreatLakes-Area*) on the *Layers* panel on the right so it's activated in the *Layer Styling* panel.
1. In the *Layer styling* panel, change the fill color to 75% white (25% black)
1. For the *Stroke style* drop-down menu, pick *No pen*, which removes the stroke altogether.

The background layers - the states and the lakes - now seem to recede and demand less of our attention.  This is important so we can make the monster locations stand out next.

<img src="/images/Style_Lakes.png" width="600"/>

## Make adjustments

## Export your map



# Resources
Inkscape - for fixing fine details
Cartography conventions for things like rivers and labels

[QGIS Training Manual for Map Composer](https://docs.qgis.org/3.10/en/docs/training_manual/map_composer/index.html)

[USGS Topographic Symbols](https://pubs.usgs.gov/gip/TopographicMapSymbols/topomapsymbols.pdf?utm_source=twitter&utm_medium=social&utm_term=61da4941-22fe-4c68-80b1-b4d070f25f17&utm_content=&utm_campaign=usgs)
