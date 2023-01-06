# Cartography for Map Figures in Academic Journals & Books

Author: Michele Tobias

This workshop cover approaches and guidelines for creating map figures for academic books and journals using **QGIS 3.26** to illustrate one workflow in a graphical GIS.  This general workflow can be applied to other graphical GIS programs or even non-map figures.

This workshop is divided into two sections. The first covers concepts and approaches to making figures. The seond will provide hands-on experience making a map figure in QGIS.

A recording of this workshop is available:
* October 27, 2020 with QGIS 3.14 [DataLab YouTube Channel](https://www.youtube.com/watch?v=eue8LoL33jA)
* November 11, 2022 with QGIS 3.26 [maptimeDavis YouTube Channel](https://www.youtube.com/watch?v=MnGqzyCC9pM)

## Prerequisites
The first section of this workshop has no perquisites.

In the hands-on section of this workshop, I will assume you have an introductory understanding of:
* Common spatial data formats (raster and vector, specifically)
* Desktop GIS in general, and QGIS specifically.  My [Intro to Desktop GIS with QGIS Workshop](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS) is a good introduction or resource if you need a refresher.

## Prepare for this workshop:
* Download and install [QGIS](https://qgis.org/) - a free and open source GIS that works on Windows, Mac, and Linux
* Download the workshop data from the [online repository](https://ucdavis.box.com/s/ozobvtvehgmsnfrizwb2darqfsoqmmgq) - note that you can download a zip of the folder's contents by clicking on the 3 dots button in the upper right corner.  You do not need to be a UC Davis affiliate to download this data.
* If you downloaded a zip, unzip the zipped folder to a location on your computer that you can find.

# Introduction
When you're flipping through a book or journal article, you probably look at the pictures first.  Because figures draw our attention, they can be an incredibly important tool for conveying the message of your text. Communicating clearly within the restrictions of map figures require a specific set of skills that is a little different from making larger maps for other purposes.

How are map figures different from other maps you might make?
* restricted size
* restricted color palette
* limited in number
* citations & license for data you use

**Key Concepts:**
* **Minimize.** Keep only what's absolutely necessary
* **Tell the Story.** What do I want my reader to learn from this map? How does it support the claims I make in my text? What story should my map tell?
* **Communication.** Does my map communicate well?

In this workshop, we'll learn strategies and steps to take in making map figures for publications.

------------------------------------------------------------------------------------------------------------------------
# Steps in Making a Map for a Journal Figure

## 1. What Story Are You Telling?

The very first thing you need to do is understand what story you need to tell.  Why are you making this map?  What should the reader learn from this map?

Here's one real life example.  I made a set of maps for a professor in Sociology.  He was writing a book about cinemas in Paris.  He needed readers to understand the location of the cinemas he wrote about in relation to other key features like subway lines and streets.  So that's the story - where are the cinemas in relation to the streets and subways?

<!---![Alt Text](/images/StoryTelling_SmoodinBook.png)--->
<img src="/images/StoryTelling_SmoodinBook.png" atl="Map with light gray lines for streets, and black lines for important metro lines and black markers and text for important locations." width="400"/>

Map of incident locations published in Smoodin, E. 2020. *Paris in the Dark: Going to the Movies in the City of Light, 1930–1950.* Duke University Press.

## 2. Data
What data do we need to tell our story?  In the case of the Paris cinemas, I needed the cinema locations, the streets, and the subway lines.  In some cases, this is easier said than done.  Data processing is pretty common at this stage to isolate just the pieces of a data you need or to convert the data into a different format.  For the cinemas, I had addresses and those needed to be [geocoded](https://github.com/MicheleTobias/geocoding-workshop) to create points.  I had OpenStreetMap data for the line work, but that includes a lot more lines than I needed so I had to subset to the larger roads (excluding foot paths) and subways.

## 3. Journal Art Specifications
We still haven't made a map yet.  We need to know what the publisher specifications (specs) are before we start anything else.  There's no point in creating a beautiful map at full page size when you won't be able to use it in the final product.  Publisher specs are often rather restrictive.  This will drive much of your creativity but also provide a decent amount of frustration.  Be prepared.  Additionally, if you submit art that doesn't follow the publisher specs, the art staff may alter your file.  This is something to avoid as much as possible for maps because the art staff won't necessarily understand some of the subtleties like how resizing a map would alter it's scale bar or that cartographers can get very picky about label placement.

Let's look at one real-world example: [Nature's Journals](https://www.nature.com/nature/for-authors/formatting-guide)

I look for the following pieces of information:

1. **Maximum figure size:** 89 mm (spans 1 column) or 183 mm (spans 2 columns) wide and maximum 247 mm high.  *This means our figures should be one of the two width dimensions and not a variation.  We can have whatever height we need up to the maxium.*
1. **Aspect ratio restrictions:** none listed. *That's fine because they have very specific dimensions.* The aspect ratio is the ratio of the width to the height of the image. Some journals specify this. Others do not.
1. **Color guidance or restrictions:** Color figures have a monetary charge in Nature's journals; color images use four-color reproduction (they use cyan, magenta, yellow, and black (CMYK) inks for printed material). *If they charge for color, try to make a grayscale map.* Grayscale is also a good choice because if someone prints the article on a black and white printer, the figure will still communicate well.
1. **Font guidance or restrictions:** none listed for maps.  *Some journals will specify a particular font or that the font must be an open font. I suggest sticking with something fairly common unless you really need a special font.*
1. **Format and quality:** Nature specifies that you send images in an electronic format, suggesting .JPG "at good enough quality to be assessed by referees".  Eventually, you'll submit higher quality figures for publication but not for the review process.  *Some journals will specify things like .eps files or .tiff of a certain dpi and may also expect certain color encoding (CMYK, RGB, etc.).  For images, if dpi (dots per inch) is not specified, I will usually use 600 dpi. Note that if you can't supply a .eps file, a plain .svg is usually readable by Adobe Illustrator with minimal issues.*
1. **Other limitations:** Nature dos not want figures to have separate panels within the same figure unless they are related to each other. This means we can only have one map per figure unless they are related. An example of a figure with panels related to each other is a time series multimap.


Often you will need to piece together specs for maps from different sections of the author instructions.  Parts of the figure specs, photography, or graphs may apply.


## 4. Page Set Up
Once you know your art specs, set up your page in the print composer/layout manager.  I typically do this immediately after loading my data, or even before. You want to assemble your map at the right size from the start to avoid having to re-do steps.

## 5. Design & Layout

### Fonts
For readability, I suggest 8 pt ([point](https://en.wikipedia.org/wiki/Point_(typography))) or larger font.

How many fonts? I use **one, maybe 2** in a journal figure map. Bold, slant, itallic, and light variants of one font are more than enough options *if I need them at all*.  Simplicity is key.

Which font?  It depends.  Pick a font that is **readable at small sizes**.  Typically, I find sans serif fonts (think Calibri) to work better than serif fonts (think Times New Roman) in small maps, but that's not a rule.  Calibri is a good standard choice available on most computers.  My current favorite is an open font called [Glacial Indiference](https://www.fontsquirrel.com/fonts/glacial-indifference) which has a bit of a mid-century modern vibe, but just because I like it doesn't mean it's always a good choice. Antoher excellent choice is Sarah Bell's [BellTopo Sans](https://www.sarahbellmaps.com/belltopo-sans-font-by-sarah-bell/) font.  Remember to ask yourself: Does this communicate the message well?

Some font tricks that can help: adjust the line spacing and kerning (the distance between the letters) to tighten up labels and make them take up less room or space them out to fill a larger space.  Don't go crazy, but adjusting the spacing is sometimes helpful.

Be careful when downloading fonts.  Be sure you're using a reputable source to avoid accidentally downloading a virus instead of a font.  Also, some fonts may not have all the characters you need, so be sure to check that they include the punctuation and international characters that your map requires.

### Visual Hierarchy

Visual Hierarchy refers to the order in which we notice elements on a page.  Certain characteristics get noticed first.  We can use these characteristics to our advantage to make sure the reader sees what we want them to see.

#### Contrast

Even when you're restricted to a gray-scale color palette, you can make use of visual hierarchy.  Elements that have high contrast with respect to the other elements around them are noticed first.  For example, darker elements stand out in comparison to light backgrounds and lighter elements stand out on a dark background.

<img src="/images/VisualHierarchy_Grays.png" alt="white, light gray, and dark gray lines crossing white and black backgrounds" width="300"/>

Vary the amount of black in your grays (10% black is pretty light vs. 90% black is almost black).   Save black for the most important items in your map - the things you need the reader to notice.



#### Size

Larger things get noticed before smaller things and size can also convey importance.  Vary your line width or the size of your points to draw attention to more important elements.  

<img src="/images/VisualHierarchy_Size.png" alt="Circles of varying sizes and lines of varying widths." width="300"/> <img src="/images/VisualHierarchy_Text.png" alt="Text that reads You notice big text before small text. The words big text are much larger than the other words." width="300"/>

Here is an example of a map that makes use of visual hierarchy.  The roads are there, but muted to let the arrondisement boundaries and the point locations stand out.

<img src="/images/VisualHierarchy_SmoodinBook.png" alt="a map of Paris showing the roads, arrondisements, and some points of interest"  width="600"/>

Reference map published in Smoodin, E. 2020. *Paris in the Dark: Going to the Movies in the City of Light, 1930–1950.* Duke University Press.

If you use color, save bright, saturated colors for the elements that need to stand out.  In the example below, I used grays and a muted blue for background information and for the important information (the railroad line variants) I used bold, saturated colors (that also print well in grayscale).  This image was made for a journal article with several similar maps, but this particular one was not needed because we decided we didn't need to discuss this particular area of the study in the paper.

<img src="/images/LimitedColor_Railroad.png" alt="a map showing topographic lines, and three colored lines that represent railroads" width="400"/>
An example of a limited color palette using bright colors sparingly to draw attention.

### Background Data
Remember Step 1 where we discussed our story?  I bet "Google Maps" or "All of OSM" wasn't a part of that story.  My personal preference is to not use "base maps" or pre-assembled data tiles unless I absolutely have to.  Vector data is better for clear line work and often "base maps" contain too much information.  They can also be difficult to cite properly when the data has been re-processed by a commercial company.

I almost NEVER use an air photo.  I love air photos. They are fun to look at because they have a lot of information in them, but that's the problem.  We need simplicity and air photos are not simple. Polygons in our map often cover up the air photo, so that kind of defeats the purpose. Only use air photos or satellite images if you need them to tell your story.

### Figure Caption
One special thing about figures in journal articles is that they get captions!  Captions are text that explains why you put this image in the article and what the reader needs to know about it.  Caption text can sometimes take the place of a map legend.  For example: *Figure 1: Study site locations. Black squares indicate sites treated with experimental weed killer and open circles indicate control sites.*

Depending on the journal, the figure caption should contain the citation in the journal's preferred style for the data you used and the cartographer's name. Some journals want you to specify the cartographer even if the cartographer is an author.

<img src="/images/FigureCaption.jpg" alt="a photograph of a book page showing a map figure with a caption printed under it" width="400"/>

Be prepared to cite the data you used and the cartographer's name in the figure caption, as well as give any contextual information that the reader will need to know to interpret the map. (Myles, C., M.M. Tobias, & I. McKinnon.  2021. “‘A big fish in a small pond’: How Arizona wine country was made” in *Agritourism, Wine Tourism, Craft Beer Tourism: Local Responses to peripherality through tourism niches.*  M. Giulia Pezzi, A. Faggian, N. Reid, eds.  Routledge.)

### Map Elements
You may have learned in your introductory GIS class that all maps need a title, legend, scale bar, and north arrow.  That was a lie.  Well... let me explain.  We talked earlier about identifying your story and tailoring your map to communicate well.  Some map figures will need some of these things.  Others will not.  

**Title:** You'll almost never need a title (that's what the figure caption is for).  

**Legend:** If your style choices are obvious, you don't need a legend.  For example, study site locations marked with bold black dots, clearly labeled, probably don't need a legend.  Legends should show the elements a reader woudn't figure out on their own.

**Scale Bar & North Arrow:** If your map shows the entirety of a recognizable geographic element, such as a continent or a state boundary, you probably don't need a scale bar and if you haven't rotated the map, you don't need a north arrow.  

When you need to add map elements to the layout, please keep it simple and subtle.  Your reader will find the north arrow if they need it. It doesn't need to scream at them.   

Only add the elements that help your reader understand the map.  Eliminate everything extra.  When it doubt, explain it in the figure caption.

<img src="/images/SelectiveMapElements_AZ_Wine_businesses.png" alt="a map showing business locations connected with lines and polygons indicating clusters of businesses" width="400"/>

A map figure with selected elements - notably it does not need a scale bar and north arrow - published in Myles, C., M.M. Tobias, & I. McKinnon.  2021. “‘A big fish in a small pond’: How Arizona wine country was made” in *Agritourism, Wine Tourism, Craft Beer Tourism: Local Responses to peripherality through tourism niches.*  M. Giulia Pezzi, A. Faggian, N. Reid, eds.  Routledge.

## 6. Image Export
Refer to your publisher specifications.  Export the format they ask for using the parameters they want.  If it's a raster format (.jpg, .png, .tiff), export the image in the highest resolution they ask for.  

Often you will submit lower resolution images for the review process and higher quality images for the final submission.

Caveats for the final submission: If they ask for 300 dpi or less, I'm still sending 600.  If they don't specify an image format or resolution, I default to 600 dpi .tiff or .png. If they ask for a .ai or .eps file and you don't have access to Adobe Illustrator to create that, a plain .svg, or a .pdf will also work because Illustrator can open and edit these formats too.  

## 7. Licensing
Can you cite your data?  Are you allowed to publish it?  

More and more often, publishers are asking for proof of their ability to publish the data legally. *You* might legally be able to use a dataset for research and education, but a publisher cannot publish data with this kind of license. This means that the data either need to be open licensed or you need a document giving you permission to use the data in a publication.  You decide the license for the data you create.  Where people typically get hung up is on data they download from the internet.  When you do this, look for the data's license statement, readme file, or metadata to find the license and save that information alongside the data files.  I often put relevant license information, source, and date I downloaded it in a .txt file in the same folder with the data to have the information ready when I need it. Data created by the US Federal Government (such as Census data or Landsat imagery) is open licensed.

Some journals want to know who made the maps you include in your submission to avoid reproducing images that belong to someone else - i.e. maps you find online and want to use.


-----------------------------------------------------------------------------------------------
# Hands On
To gain experience with the concepts we just talked about, let's make a map!  

## What story are you trying to tell?

### The Premise of this Exercise
Let's pretend we want to a map for a journal article about the underpinnings of the distribution of cryptozoology sightings in the northeastern US and southeastern Canada, focusing on lake monsters, creatures reported to live in lakes that are mainly known from folklore and typically take on the the shape of extinct or extraordinarlily large living reptiles.  You want your readers to understand the relationship between the monster locations and also their location on the planet.  In our imaginary scenario, we plan to submit our paper to one of the Nature journals.

What's the story? What should readers learn from this map? What data do you need to tell that story effectively?

The story I plan to tell is: where are these monsters reported to live in the US Great Lakes area? What are their names? For reference, what lakes and states or provinces are they in?  The story you want to tell might be different, so feel free to make adjustments as needed.

## Download Data
If you haven't already, download the workshop data from the [online repository](https://ucdavis.box.com/s/ozobvtvehgmsnfrizwb2darqfsoqmmgq). If you downloaded a .zip file, unzip the data to a folder you can easily find.

The data we have to work with today is:
* Lake Monsters - LakeMonsters.gpkg - locations of lake monsters; global distribution
* Lakes - Lakes_GreatLakes-Area.gpkg - a clip of the [Natural Earth Data](https://www.naturalearthdata.com/) lakes dataset for the Great Lakes and areas adjacent
* States - US_CAN_Admin1.gpkg - a clip of the [Natural Earth Data](https://www.naturalearthdata.com/) states and provinces data for the US and Canada (I'm going to refer to these as "states" for simplicity, but I want to acknowledge that this includes Canadian provinces as well.)

Geopackage (.gpkg) is a single file, open vector format. We're using it today because it's one file per dataset (unlike Shapefile), which makes data management so much easier.  See the README.txt file that comes with the data download for more details and sources of the data.

### Data Processing
We'll be working with an international dataset of locations of lake monsters, the most famous of which is arguably Nessie who supposedly lives in Loch Ness in Scotland.  This dataset was assembled from [Wikipedia's List of Lake Monsters](https://en.m.wikipedia.org/wiki/List_of_lake_monsters).  The lake names were geocoded (you can find the R script that I wrote to process the data in the [r_scripts](/r_scripts) folder of this repo), corrected, then exported to a geopackage file.  Why did I process this data for you?  It took a few hours to do and requires skills we are not focusing on in this workshop.  

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

<img src="/images/LoadData.png" alt="a screenshot of QGIS showing the three layers loaded" width="600"/>
Note that the colors of the data are selected at random, so your data will probably look different.


3. Save your project file.

4. Set your project's projection to North America Albers Equal Area Conic (ESRI: 102008). This projection minimizes distortions for North America. If you're working on a map featuring a different area, choose a projection that fits your chosen area. I'm using the first transformation it offers me because that one is most appropriate for the area we'll be mapping today. Save again.

## Set up the print layout page
In QGIS, the print layout interface is where you compose your map.  Typically, I will set up my layout before I start styling data (mainly because I just looked up my art specs and don't want to have to go find them later when I'm ready to finish up the map).

Open a new layout:
1. Project Menu -> New Print Layout
2. In the window that pops up, give your new layout a name. I'll call mine "Nature Specs" so later I'll know this layout was for my Nature submission with this data. Click *OK*.
3. A new blank layout window should now be open.

<img src="/images/NewLayout.png" alt="a screenshot of a blank print layout" width="600"/>

Set the page size:
1. Right click anywhere on the white page in the middle of the window
1. Select *Page Properties* from the menu
1. On the panel on the right side of the screen, set the *Size* drop down to *Custom*, then set the *Width* to 183 mm and the *Height* to 240 mm for now - we'll shrink this later as needed. Note: there is a units drop down to the right of the *Width* and *Height* options.
1. Click the save button.  This saves the whole project, not just the layout.

Now that this is set up, we can close this window and come back to it after we've styled the data.



## Style the data
We've decided on our story, loaded up our data, and set up our page.  Now it's time to style the data.

First, let's center our view on the Great Lakes area using the zoom tool. It doesn't have to be perfect.  We will adjust later.

<img src="/images/ZoomToGreatLakes.png" alt="a screenshot of the map canvas zoomed to the Great Lakes area" width="600"/>
Again, these colors do NOT communicate well at all.  We'll change it soon.

Let's open the *Layer Styling* Panel. 
1. Click the *View* menu at the top of the QGIS window
1. Choose *Panels*
1. Check *Layer Styling* - there should now be a panel on the right side of your screen.
1. Make sure the box next to *Live update* is checked.  You can uncheck this if you don't want it to update choices automatically, for example, if you're working on a big file and it's slow to update as you work.

This is a toolbar that can be docked on the side of the window and allows us to make changes to the layer styling with live updates (so we don't have to keep clicking to update).

### States
Let's start with the largest background layer.  This will have a big impact on how we style the other layers and will help set the tone for how we work.
1. In the *Layers* panel (table of contents) on the left, click on the States layer (*US_CAN_Admin1*).  The options in the *Layer Styling* panel on the right should now reflect the current state of the States layer.
1. In the *Layer Styling* panel, click on the words *Simple fill* - this lets us access the details of the way the state polygons are displayed.
1. Click on the colored box for the *Fill color*.
1. I want to make the fill of the states white, so in the *HTML notation* box, I will specificy *#ffffff* as the color (6 Fs).  You could pick any color you like from the various color selector methods.  When you're done, click the back buton (blue triangle near the top of the panel) to go back to the *Simple fill* options.
1. For the *Stroke color* (the outline of the polygons), I want to pick a shade of gray.  Click in the color box next to *Stroke color*.  In the color sliders, you can move the H (for hue) and S (saturation) sliders to 0, and the V (for value) to 80, or you can put *#cbcbcb* in the *HTML notation*. Click the back button to return to the *Simple Fill* options when you're done.

Save.

The stroke on the states might look a little light and might be confusing to the eye because the ocean color is the same color as the fill.  Let's change the background color to make the ocean color easier for our eyes to understand:
1. On the *Project* menu, select *Properties*.
1. Select the *General* tab on the left side of the window, then click on *Background color* in the middle of the window.  Change it to the same color as the stroke of your states.  Click *OK* in the color interface and *OK* in the Options interface.

<img src="/images/Style_States.png" alt="A screenshot of the map canvas showing the states with the style changes we made" width="600"/>

We've got more work to do, but this is already starting to look better!

### Lakes
Let's work on the lakes next.
1. Select the lakes file (*Lakes_GreatLakes-Area*) on the *Layers* panel on the right so it's activated in the *Layer Styling* panel.
1. In the *Layer styling* panel, change the fill color to gray with 75% white (25% black) - *#bfbfbf*
1. For the *Stroke style* drop-down menu, pick *No pen*, which removes the stroke altogether.

Remember our discussion of Visual Hierarchy? The background layers - the states and the lakes - now seem to recede and demand less of our attention.  This is important so we can make the monster locations stand out next.

<img src="/images/Style_Lakes.png" alt="a screenshot showing the style changes to the lakes" width="600"/>


### Lake Monsters
The last layer to style is the lake monsters.
1. Activate this layer in the *Layers* panel.
1. In the *Layer Styling* panel, click on the words *Simple marker*.
1. Scroll down to the box that contains different marker shapes.  Circles are the obvious choice for point data, but I like to use squares for my point markers rather than circles because they stand out.  Both are good options.  In academic publications, I try to avoid shapes like stars.  They might look silly, but more importantly, they are complex shapes and we're trying to avoid complexity.
1. For the *Fill color*, I'm going to use straight up black (#000000).  This will make the points stand out well against the lighter background data.
1. Adjust the *Size* as needed.  I'm going to leave this for now until I see how it looks in the composer.

<img src="/images/Style_Monsters.png" alt="a screenshot showing square, black points" width="600"/>


## Labels
Labeling options are also available in the *Layer Styling* panel.  Click on the yellow "abc" icon on the strip of icons on the left side of the panel.  For each layer, you'll need to choose a type of label - we'll just need *Single Labels* for this map, but feel free to explore the other options.  Once this option is set, you'll see lots of tabs across the upper part of the panel.  Each tab has many options to explore.

I like to pick a single font to work with for the whole map.  I will use **Calibri** here and show you ways to vary this single font to meet our needs.  Note that my default font is some system font, so I'll need to change that for each layer.  You can use whatever you like.  The reason I'm using Calibri is that (1) you are likely to have it as well, (2) it's sans serrif (it has simple lines and no flourishes... compare it with Times New Roman which is a serif font), and (3) it has many variants - regular, bold, bold italic, italic, light, light italic - so it's like have 6 fonts that all go together.

Another choice I'll make up front is that I will use **8 point font** unless I need something bigger (probably the point labels will be larger).

Next, I've listed some styling options I will use for each of our layers:

### States

**Text Tab**

Value: UPPER("name") - The *UPPER()* function changes the text in the *name* field to all caps.

Font: Calibri

Size: 8 points

Color: same as the ocean and state stroke (#cbcbcb)

**Formatting Tab**

Letter Spacing: 1.5 - This spaces out the letters, a design choice that is fairly common with labeling large polygons

**Rendering Tab**

In the *Overlapping labels* section, for the *mode*, choose "Allow overlaps without penalty".


### Lakes
We'll used rule-based labeling with this one so we just label the big lakes.  Labeling all the lakes would clutter the map. Choose *Rule-based labeling* from the drop-down list. Add a new label by clicking on the green + button at the bottom of the panel.

Description: Big Lakes

Filter:  $area > 19000000000


**Text Tab**

Value: name

Font: Calibri

Style: Italic (traditionally, waterbodies are label with a slant or italic font... it's not a rule)

Size: 8 points

Color: slightly darker or lighter than the lake color - let's try 50% black (#7f7f7f)


**Rendering Tab**

In the *Overlapping labels* section, for the *mode*, choose "Allow overlaps without penalty".


### Lake Monsters

**Text Tab**

Value: name

Font: Calibri

Style: Bold

Size: 10 points

Color: Black

**Formatting Tab**

Wrap on Character: , (comma) - When labels contain a comma, the comma is replaced by a new line character so the labels with two names print each name on its own line.

Line height: 0.70 line - This makes the lines closer to eachother when there are two lines in a label.

**Rendering Tab**

In the *Overlapping labels* section, for the *mode*, choose "Allow overlaps without penalty".

<img src="/images/Labels.png" alt="a map with text labels" width="600"/>

## Make adjustments
Use the *Label Toolbar* to move and rotate labels by hand to put them where you want them.  This will take some time.  Just get them close and don't spend time getting things perfect.  We'll need to adjust more later.


## Print Composer

Open the Print Composer layout we made earlier with the page dimensions set to our journal specifications.  *Project Menu* --> *Layouts* --> *Nature Specs* (or whatever you named your layout)

The Print Composer requires that you add any map elements that you want in your composition, including the map itself.  Each of these items also has properties that can be accessed by clicking on the element on the page.  The properties for any given element are displayed in the right side panel.  Remember to switch back to the *Select/Move Item* button or the *Pan Layout Tool* after adding things.

Add the map with the *Add Map* tool.  Fill up the space at the top of the page, allowing the tool to snap to the corners.  We won't need the whole length of our layout as it currently is, but we'll adjust that later.  

With the map selected, let's adjust the scale and center of the map.  Change the scale number in the *Item Properties* and recenter the map with the *Move Item Content* tool such that the data is centered and fills up the map space.  Remember that our story focuses on the Great Lakes area, so we don't need to show data outside that space.

Using the resizing handles (they look like white squares when the map is selected), adjust the size of the map to fit the data well.

<img src="/images/Layout_AddCenterZoom_Map.png" alt="a screenshot of the map composer showing a map added to the blank page" width="600"/>

Now that we've picked a scale to render our map at, your labels may not look quite the way you want them.  Copy the number in th scale box of the *Item Properties* for the map.  Switch to the main QGIS window and paste that copied number in the scale box at the bottom center of the window.  Now the scales match and we can see the effect it has on our lables.  Spend some time adjusting them to a better position.  

Switch back to the layout window and click the *Refresh view* button.  I might adjust my scale, center, and some of the labels as needed.  For states that are not fully visible in the map, I will probably move the labels off the map so they aren't getting cut off.  Also, you may need to turn off the options related to showing labels for any labels that are misbehaving (some of mine were in different places than I put them in the layout).

Now we can resize the map to tighten up the border.  Again, using the resizing handles, adjust the size of the map to fit the data well. (I adjusted some label placement yet again as I refined my composition.  This is normal. As you change one aspect, others may need adjustment too.)

Finally, let's adjust our map canvas to fit our map:

1. In the properties for the map, look in the *Position and Size* section to see how high the map is.  Copy that number.  
1. Click off of the map so it's no longer selected.  
1. Right click on the white page space and select *Item properties* to open the properties for the page itself.  
1. Paste the hight number in the *Height* property to match our map element to the page.  Again, you may now decide a label or some other item needs adjustment.

Finally, do we need any other elements?  This depends on (1) your story, (2) your audience, and (3) what other maps you have in the paper you are submitting.  Is this for a North American audience?  Then you probably don't need a scale bar or north arrow because the Great Lakes are a fairly recognizable area.  Is it for an international audience?  Maybe you need those things.  Maybe I have another map that shows all of North America or the world and I've already outlined my study area in that.  Then I don't need to add extra context.  

If I was going to put a scale bar and north arrow, I would put them on Iowa and Illinois and I would make them the same gray as the state lines or maybe the same color as the lakes and they would be reasonably small.  Complex compass roses are wonderful for large maps, but they are not a good choice when your space is limited.

Sometimes I will put a box behind the scale and north arrow filled with the background color (white in this case) to avoid conflicts with the data around them. We can cut off a part of the Iowa/Illinois state line to make the label more clear and not hurt the way the map communicates the data.

<img src="/images/Layout_Final.png" alt="The map fit to the page in the composer" width="600"/>

## Export your map

Finally, we're done with our map! (Ok, it's normal if you're now seeing a dozen things you would change, but you've got to submit that paper, so let them go!)  Let's export it!

Exporting happens in the *Print Composer*.  Click the *Export as Image* button, decide where to save your map and what file type you want.  The journal asks for a .jpg file at a high enough resolution for the reviewers to review it in the first submission.  Later, they'll want something of a higher resolution and probably a different format, but for now, let's pick .jpg. Give it a descriptive name so we know what it is when we put it in the paper.  I'll call mine *GreatLakeMonsters.jpg* Once you click the *Save* button, a window will pop up asking for more parameters.  300 dpi is sufficient for the first submission.  Leave the page height and width as they are - it adjusts automatically to match the dpi - and *Save*.

<img src="/images/FinishedMap.png" alt="the finished map" width="600"/>


# Resources

Here are some reasources to help you refine your maps:

* [Inkscape](http://inkscape.org/) - I use this program for fixing fine details.  It's a free and open source vector illustrator program so it is similar, but not the same as Adobe Illustrator.  Export a .svg file from the QGIS print composer and open it in Inkscape to edit things like labels with super fine control.

* [QGIS Training Manual for Map Composer](https://docs.qgis.org/3.10/en/docs/training_manual/map_composer/index.html)

* [USGS Topographic Symbols](https://pubs.usgs.gov/gip/TopographicMapSymbols/topomapsymbols.pdf?utm_source=twitter&utm_medium=social&utm_term=61da4941-22fe-4c68-80b1-b4d070f25f17&utm_content=&utm_campaign=usgs)
