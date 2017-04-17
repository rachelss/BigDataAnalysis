### Python data analysis

In class we worked on understanding the data from ecological surveys of animals. For this assignment you will use a similar dataset containing data on plant surveys. The information on the data is as follows:

reference: https://figshare.com/articles/Data_Paper_Data_Paper/3556779

citation: Cover, density, and demographics of shortgrass steppe plants mapped 1997-2010 in permanent grazed and ungrazed quadrats. Chengjin Chu, John Norman, Robert Flynn, Nicole Kaplan, William K. Lauenroth, and Peter B. Adler. Ecology 2013 94:6, 1435-1435.

description: This data set maps and analyzes demographic rates of many common plant species in the shortgrass steppe of North America under grazed and ungrazed conditions.



Download the data using the program Data Retriever, which you install and run from the command line. 

`pip install git+https://git@github.com/weecology/retriever.git`
`retriever install mapped-plant-quads-co`

Create a jupyter notebook containing the following, along with all other relevant commands to load and analyze the data. Use cells with text in markdown format to explain your thought process for your analysis and brief discussion of your results. Submit your work as a new github repo. You may work in groups of up to three, so long as your commit history reflects significant contributions of all members of the group.

1. A plot of the area covered by each species over all quadrats (y) for each year (x).
2. A plot of the area covered by each growth-form over all quadrats (y) for each year (x).
3. A plot of the area covered by each growth-form over all quadrats (y) as a function of the mean precipitation for the year (x).
4. At least one additional plot investigating the relationship between plant composition (e.g. species or growth form) and another variable.