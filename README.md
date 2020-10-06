# Cartography for Map Figures in Academic Journals & Books

Author: Michele Tobias

**This workshop is a work in progress.  Please check back later for the finished product.  Target completion date: October 27, 2020**

This workshop will discuss approaches and guidelines for creating map figures for academic books and journals.  We'll use QGIS to illustrate one workflow in a graphical GIS.  This general workflow can be applied to other graphical GIS programs or even programming environments.

In this workshop, I will assume you have an introductory understanding of common spatial data formats (raster and vector, specifically), desktop GIS in general, and QGIS specifically.  My [Intro to Desktop GIS with QGIS Workshop](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS) is a good introduction or resource if you need a refresher.

Prepare for this workshop:
* Download and install [QGIS](https://qgis.org/) - a free and open source GIS that works on Windows, Mac, and Linux
* Download the workshop data from the [online repository](https://ucdavis.app.box.com/folder/123942289025) - note that you can download a zip of the folder's contents by clicking on the 3 dots button in the upper right corner.  You do not need to be a UC Davis affiliate to download this data.

# Introduction
How are map figures different from other maps you might make?
* resticted size
* restricted color pallette
* citations & license for data you use


**KEY CONCEPTS:**
* MINIMIZE! Keep only what's absolutely necessary
* What do I want my reader to learn from this map? How does it support the claims I make in my text?
* Does my map communicate well?

------------------------------------------------------------------------------------------------------------------------
# Steps in Making a Map for a Journal Figure

## 1. What Story Are You Telling?

The very first thing you need to do is understand what story you need to tell.  Why are you making this map?  What should the reader learn from this map?

Here's one real life example.  I made a set of maps for a professor in Sociology.  He was writing a book about cinemas in Paris.  He needed readers to understand the location of the cinemas he wrote about in relation to other key features like subway lines and streets.  So that's the story - where are the cinemas in relation to the streets and subways?

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

How many fonts? I use one, maybe 2 in a journal figure map. Bold, slant, itallic, and light variants of one fond are more than enough options *if I need them at all*.  Simplicity is key.

Which font?  It depends.  Pick a font that is readable at small sizes.  Typically, I find sans serif fonts (think Calibri) to work better than serif fonts (think Times New Roman) in small maps, but that's not a rule.  Calibri is a good standard choice available on most computers.  My current favorite is an open font called Glacial Indiference which has a bit of a mid-century modern vibe.

Some font tricks that can help: adjust the line spacing and kerning (the distance between the letters) to tighten up labels and make them take up less room.  Don't go crazy, but a little less spacing is sometimes helpful.

### Color Hierarchy
Even when you're restricted to a gray-scale color palette, you can make use of visual hierarchy.  

Vary the amount of black in your grays (10% black is pretty light vs. 90% black is almost, well, black).  

Vary your line width or the size of your points.  

Save black for the most important items in your map - the things you need the reader to notice.

### Background Data
Remember Step 1 where we discussed our story?  I bet "Google Maps" or "All of OSM" wasn't a part of that story.  My personal preference is to not use "base maps" or pre-assembled data tiles unless I absolutely have to.  Vector data is better for clear line work and often "base maps" contain too much information.  They can also be difficult to cite properly when the data has been re-processed by a commercial company.

I almost NEVER use an airphoto.  I love airphotos. They are fun to look at because they have a lot of information in them, but that's the problem.  We need simplicity and airphotos are not simple. Polygons in our map often cover up the airphoto, so that kind of defeats the purpose.

### Figure Caption
One special thing about figures in journal articles is that they get captions!  Captions are text that explains why you put this image in the article and what the reader needs to know about it.  Caption text can sometimes take the place of a map legend.  For example: *Figure 1: Study site locations. Black squares indicate sites treated with experimental weed killer and open circles indicate control sites.*

Depending on the journal, the figure caption should contain the citation in the journal's preferred style for the data you used and the cartographer's name.

### Map Elements
You may have learned in your introductory GIS class that all maps need a title, legend, scale bar, and north arrow.  That was a lie.  Well... let me explain.  We talked earlier about identifying your story and tailoring your map to communicate well.  Some map figures will need some of these things.  Others will not.  

**Title:** You'll almost never need a title (that's what the figure caption is for).  

**Legend:** If your style choices are obvious, you don't need a legend.  Study site locations marked with bold black dots, clearly labeled, probably don't need a legend.  Legends should show the elements a reader woudn't figure out on their own. 

**Scale Bar & North Arrow:** If your map shows the entirety of a recognizable geographic element, such as a continent, you probably don't need a scale bar and if you haven't rotated the map, you don't need a north arrow.  

When you need to add map elements to the layout, please keep it simple and subtle.  Your reader will find the north arrow if they need it. It doesn't need to scream at them.   

Only add the elements that help your reader understand the map.  Eliminate everything extra.  When it doubt, explain it in the figure caption.

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
Let's pretend we want to a map for a journal article about the underpinnings of the distribution of cryptozoology sightings in the northeastern US and southeastern Canada, focusing on lake monsters.  Central to your argument in this paper is the location of the monsters and you want your readers to understand the relationship between the monster locations and also their location on the planet.  In our imaginary scenario, we plan to submit our paper to one of the Nature journals.

What's the story? What should readers learn from this map? What data do you need to tell that story effectively?

The story I plan to tell is where are these monsters reported to live? What are their names? For reference, what lakes and states or provinces are they in?  Your story might be different

## Download Data
If you haven't already, download the workshop data from the [online repository](https://ucdavis.app.box.com/folder/123942289025)

The data we have to work with today is:
* LakeMonsters.gpkg - locations of lake monsters; global distribution
* Lakes_GreatLakes-Area.gpkg - a clip of the Natural Earth Data lakes dataset for the Great Lakes and areas adjacent
* US_CAN_Admin1.gpkg - a clip of the Natural Earth Data states and provinces data for the US and Canada

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

![Alt Text](/images/LoadData.png)

3. Save your project file.

4. Set your project's projection to North America Albers Equal Area Conic (ESRI: 102008). I'm using the first transformation it offers me because that one is most appropriate for the area we'll be mapping today. Save again.


## Set up the print layout page

## Style the data

## Make adjustments

## Export your map



# Resources
Inkscape - for fixing fine details
Cartography conventions for things like rivers and labels

[QGIS Training Manual for Map Composer](https://docs.qgis.org/3.10/en/docs/training_manual/map_composer/index.html)

[USGS Topographic Symbols](https://pubs.usgs.gov/gip/TopographicMapSymbols/topomapsymbols.pdf?utm_source=twitter&utm_medium=social&utm_term=61da4941-22fe-4c68-80b1-b4d070f25f17&utm_content=&utm_campaign=usgs)
