## Ulysses Project Review

Site publication: <http://ulysses.newtfire.org>
GitHub: <https://github.com/frabbitry/Ulysses>
Developers: 
* Fiona Carter: @frabbitry 
* Kiara De Vore: @KSD32
* Bradley Thomas: @BMT45
* 
Date of Evaluation: 2019-05-13
Evaluated by: Elisa Beshero-Bondar: @ebeshero


### General  
The Ulysses project is ambitious and accomplished in meeting some serious challenges in digital literary and GIS analysis. The project is engaging to navigate as an orientation to the novel’s distinctively precise handling of locations. You have launched a serious scholarly project and designed a research tool that applies a new way of reading this experimental novel. We recognize this to be a proof-of-concept launch stage of what could be a major digital humanities project! 

### Research questions
These are clearly articulated on your Methodology page. Drawing from Derek Attridge’s book, *Semicolonial Joyce*, you are investigating how Joyce characterized Dublin with allusions:
“ Allusions can be used as a method of characterization. What, then, do the allusions used in a specific Dublin location say about that location? What do they say about the city? How are they part of Joyce's characterization and reclaimation of the city of Dublin?”

The question of what counts as an allusion and whether these might be categorized has occurred to me this semester, as many of your allusions are clearly literary and mythological, and others to politics and historical events. There will certainly be other categories we might apply. Currently these do not seem to be studied separately from their correspondences and clusterings in particular locations, but a classification or **typology** of Joyce’s allusions may be a direction to take in a future stage for the project.


While we’re looking at this page, here are a couple of small but significant corrections to make in an otherwise very readable discussion of your methods:
**original sentence:**
```
There are several theories about why this is, but the one we liked comes from this book called <a href = "https://www.amazon.com/Semicolonial-Joyce-Derek-Attridge/dp/0521666287">Semicolonial Joyce</a>, which says that Joyce uses many location names with little description make those who aren't familiar with 1904 Dublin feel more like outsiders while making those who are familiar with 1904 Dublin insiders.
```
**correction 1:**
```
There are several theories about why this is, but the one we liked comes from this book called <a href = "https://www.amazon.com/Semicolonial-Joyce-Derek-Attridge/dp/0521666287">Semicolonial Joyce</a>, which says that Joyce uses many location names with little description to make those who aren't familiar with 1904 Dublin feel more like outsiders while making those who are familiar with 1904 Dublin insiders.
```
**correction 2:** We would strongly recommend changing the link to something other than Amazon (see below).


## Links to related resources

We recommend to link out to Semicolonial Joyce at its [Cambridge University Press publisher description](https://www.cambridge.org/ge/academic/subjects/literature/english-literature-1900-1945/semicolonial-joyce?format=PB&isbn=9780521666282) where readers will see more information about the book and are more independent of commercial distributors. (Readers who want to find the book will find their own way, perhaps in a library.) This is fairly standard practice for DH projects.

The same advice goes for other links to Amazon, such as to Gifford and Seidman’s *Notes for Joyce: an Annotation of James Joyce's Ulysses*.  

To what extent did [that New York Times article](https://archive.nytimes.com/www.nytimes.com/fodors/top/features/travel/destinations/europe/ireland/dublin/fdrs_feat_60_5.html) that you link to on your main page suggest the direction of your project? Looking at it, we suspect you may want to say more about this. we were going to suggest a different resource to cite about Joyce’s ambition, but in reading it we find they are making travel recommendations about places to visit in Dublin that were sites in Bloom’s walk. Perhaps that might bear writing about a little, to make the description for the site a little more user-centered. Here are some question that might help with some rewriting:
* Could your site be appealing to Joyce fans who want finding aids to better discover location information in Joyce’s book? Is that something you might want to write about a little more? 
* Could your site be an interesting way to introduce Dublin to readers with interests in literature, history, and travel more generally, through featuring Joyce’s language about locations?

### Technologies for visualization 
The team experimented with XQuery to extract and analyze location and allusion data,  and how these collocate, and this is a really ambitious and interesting feature of your site. We enjoyed learning over your shoulders as Fiona experimented with QGIS and implemented some nifty tooltips to higlight location markers in those map images. 

We also appreciated and benefited from Fiona’s experiments with JavaScript to make a magnifying glass. This has the interesting effect of *inviting* readers to take a closer look at those complicated network graphs while also making it easier to read nodes and labels. It’s very cool. Nevertheless, with networks as extensive as, say, the giant, dense wheel around Eccles Street, we think it best to accompany the graph with a chart, and perhaps to try to distinguish among kinds of allusions, for example, literary allusions vs. allusions to historical events. That way you can generate some simpler subnetworks, and use your visualizations to help evaluate which locations have more literary vs. more nonliterary associations. We also recommend outputting a simple HTML table of allusions to accompany the complicated network plots, perhaps sorted or organized based on allusion type to help your readers survey the data at a glance.

Kiara’s work with the reading views deployed her experience with XSLT, to which we added a browsing tool to help zoom to the elements holding location and place data. We *do* have an unresolved problem on these reading view pages, which are not w3c compliant. (See the report from the w3c validator: https://validator.w3.org/nu/?doc=http%3A%2F%2Fulysses.newtfire.org%2FWanderingRoc.html ). The problem is that in HTML, we are not permitted to nest `<div>` elements inside `<p>` or `<span>` elements. To repair this requires amending the XSLT to model a different output, mostly likely nested spans with distinct `@class` and possibly `@title` attributes. This is one of those places where the code may be doing what you want in the browser because web browsers are a little too forgiving, but you really do need to be checking your output in oXygen, which would have caught this! (Opening wanderingRoc.html in oXygen reveals the page is riddled with validation errors). 

*The question is, how to fix it?* Do you really want to separate out the locations you encoded (which hold allusions as well as indications of a mappable place), into blocks in your output of the novel’s sections? It is a little unusual (and probably not best pleasing to literary people and Joyce fans) to see paragraphs aligned center and locations inside and above them set to be distinct *blocks*. Block level elements (which include `<p>`, `<section>`, and `<div>` in HTML) are designed to be blocks, big rectangles, on a page with white space above and below. We are accustomed to seeing paragraphs as blocks, but not internal content and not content that spans multiple paragraphs. 

There is a coding challenge here! The team has an issue with its location elements because they sometimes cross paragraph boundaries—a problem with overlapping hierarchies! These need some special attention in your source XML: Typically I recommend finding a way to set spans around *parts*: part 1 representing the end of a paragraph and part 2 the at the beginning of the next. I am happy to meet with you to help you rethink your XSLT and HTML modeling  as a next stage of your project.


### GitHub and project file management
Your repo at this stage is reasonably well organized to compartmentalize various work areas from XML markup to schema editing, XQuery, XSLT, and output HTML. Here we pause, because it is not so easy to know what is what in the HTML directory. It is true that a flat/shallow document hierarchy for your website can make life easier for setting your CSS and JavaScript link lines, and we concede that too often we do this ourselves. However(!) it is probably not best practice for a long-range project since in a few months, if you come back to work on this and want to update something in say the Graphics area of your site, you need to wade through a pretty long document list. We recommend for long-range work to separate your site pages into distinct components with some helpful file folders.

It can be fun after the end of a semester to be able to look at a visual summary of work based on the team’s git commits (see https://github.com/frabbitry/Ulysses/graphs/commit-activity, which gives us a clear, steady pace from early in the semester followed by a fairly predictable marked increase of commits in the second half of the term.) There was also evidently a fair amount of revision going on, a sign of thoughtful workflow as shown in this graph of additions and deletions:  https://github.com/frabbitry/Ulysses/graphs/code-frequency . We were sorry, however, to see pretty marked imbalance in the work effort, with only five commits from Brad over of the course of the term: https://github.com/frabbitry/Ulysses/graphs/contributors . It is not unusual for the project leader to take on a lot of work, but we know that each of you was working on portions of the project, and perhaps not as steadily as you might have been. The issues with (not) checking the output of the XSLT and perhaps in assisting with CSS for the main pages are areas where the team might have rallied together more steadily through the term. 


###  “UX”: User Experience and Site Interface
The site is a little plain and could probably use some graphics on the first page. (How about a visual of Joyce's head with a magnifying class to tie together some of the fun components of your interface?) However, the content is likely to delight Joyce fans, especially the poem on the Methodology page. Please remove the centering and use left-alignment for both poems and paragraphs. They don't all need to be aligned to the left margin, and typically poems have a wider left margin than prose paragraphs. Here is a little CSS tutorial for styling poetry that might be fun to experiment with:  <http://webdesignernotebook.com/css/styling-a-poem-with-advanced-css-selectors/>

Your best interface design is on the Graphics pages, where you adeptly met the challenge of balancing your infographics with navigation assistance and analysis. Your use of navigation bars (vertically and horizontally) works to help guide the reader through your gazetteer, and you did a terrific job here with your use of CSS and JavaScript.   


### Closing Comments
While we took some time to point out some limitations on the site, we *do* realize this is a work in progress. We are also excited for the future of this project and hope you are too! As you noted on submission, if the vision of this project were fully realized, you would create graphs and maps for each page, and you might take on more of the novel. At this stage you are also aware of potential issues in the XML markup that you might want to take time to correct. If interested in a next stage of work, please let me know: we can arrange independent study credits or make this a project for a future semester if Fiona continues on the DH instructor team. We have had students return to projects (http://hamilton.newtfire.org is an example) to complete an Advanced Praxis in DH and take time to enhance a project they care about. And we have also seen former students continue projects after graduating. The project is here waiting to be continued if you wish! 
