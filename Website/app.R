

library(shiny)
library(shinythemes)
library(tidyverse)

# Define UI for application that draws a histogram
ui <- fluidPage( theme = shinytheme("united"),
                 
                 navbarPage(
                     title = "Climate Change in Central Asia",
                     
                     tabPanel(
                         
                         title = "Project",
                         
                         fluidRow(
                             
                             column(width = 2),
                             
                             column(width = 8,
                                    
                                    tags$h1("Studying Climate Change's Effect on Central Asia using Modis NDVI Data",  align="center"),
                                    
                                    tags$p("By: Cian Stryker", align = "center"), 
                                    
                                    tags$br()
                                    ),
                                    
                             column(width = 4)
                             ),
                         
                         fluidRow(
                             
                             column(width = 2),
                             
                             column(width = 8,
                                    
                                    imageOutput(outputId = "Photo_1", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("Central Asia is a crossroads of the world. The main thoroughfare of the ancient Silk Road and a colonial battleground between the Russian and British Empires, it is now the first step of China’s Belt and Road initiative which is a global infastrucutral investment strategy aimed at shifting the world’s economic capital to Beijing. After the demise of the ancient Silk Road and the more recent dissolution of the Soviet Union, the region has fallen into a period of economic downturn and fragile political stability. Central Asia is economically dependent on agriculture, particularly cotton production. Ironically, the region is not particularly well suited to this industry. Because of its reliance on agriculture, Central Asia is more susceptible to the effects of climate change than regions that enjoy higher political stability and tat are less economically reliant on agriculture.  The preliminary effects of climate change in the region are already apparent and can be observed using satellite imaging techniques."),
                                    
                                    tags$p("Kyrgyzstan and Tajikistan are mountainous. They provide water for the entire region when the snows melt in the spring. The downstream countries of Uzbekistan, Turkmenistan, and Kazakhstan use this runoff to support their large-scale agricultural industries. Much of Kazakhstan is steppe, and a large portion of Uzbekistan and Turkmenistan is desert. This means that Kazakhstan, Uzbekistan, and Turkmenistan rely on the water from Tajikistan and Kyrgyzstan to irrigate what little fertile land they have. Reliance on agriculture and water from upstream countries has created an unstable situation exacerbated by climate change that threatens to desiccate arable land and reduce future water flow from snow melt. The effects of climate change in Central Asia are already clearly visible in Modis NDVI satellite data."),
                                    
                                    tags$p("Modis, or Moderate Resolution Imaging Spectroradiometer, satellites were launched in 1999 and 2002 to provide imaging for the entire Earth. They describe large-scale dynamics. Because of its coarse resolution and frequency of collection, Modis data are best suited to describe huge geographic areas. NDVI or the Normalized Difference Vegetation Index, is an indicator that can be used to measure the existence and health of vegetation. Everything on Earth reflects light but substances differ which types of light are reflected in which amounts. Specifically, the ratio of reflected red and infrared light can be used to indicate whether an 500m x 500m area is predominantly vegetation and if so, its relative level of health."),
                                    
                                    tags$p("Using Modis data, I created NDVI maps of Central Asia in 2005 and 2018 (pictured below). The data were gathered in the spring of both years, so no significant differences should appear due to a seasonal change. The NDVI is separated into four color categories. Dark green shows particularly dense or healthy vegetation, which might be forest for example. Light green shows healthy vegetation and in Central Asia, the agricultural centers are typically in this category. The brownish-green shows less healthy or sparse vegetation, which can include unproductive steppe as well as desert. Finally, the black on the map represents areas that are not vegetation.  These are mostly located in Kyrgyzstan and Tajikistan, and likely show the snowy mountaintops of those countries."),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Central Asia: NDVI 2005", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_2", width = "100%", height = "50%"),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Central Asia: NDVI 2018", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_3", width = "100%", height = "50%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("The NDVI maps for the entire region fail to demonstrate clearly any large-scale changes between 2005 and 2018. To more clearly document change over time, we can simply compute the difference between the NDVI data of the two maps. In the result, we can see where agricultural health has improved over time and where it has deteriorated. In the map below, everything in green represents positive growth – an improvement in the health of vegetation – while red indicates the opposite."),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_4", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("In the difference map we can see that across most of Kazakhstan and parts of Uzbekistan there is generally a positive trend for vegetation. Large parts of Turkmenistan and the rest of Uzbekistan there is largely a negative trend. This data analysis, however, means little without any context for what it means for the region. Experts believe that climate change’s detrimental effect can be seen in desertification and a reduction of glaciers. A closer examination of each region in Central Asia will reveal these effects of climate change."),

                                    tags$br(),
                                    
                                    tags$h3("Desertification", align = "center"),
                                    
                                    tags$p("The images below show Turkmenistan and Uzbekistan, where the majority of the desert in Central Asia is located. Satellite photography depicts the extent of the desert. Then let’s take a closer look at the NDVI difference map used previously to see how vegetative health has changed. Both maps clearly show that only a few key areas within these two countries are actually arable; the majority of the landscape is desert except for a thin strip of arable, green land along the border between the two countries that is shown inside the red circle below. The NDVI difference map shows how the vegetative health of the desert region of Central Asia has changed."),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_5", width = "100%", height = "70%"),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_6", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("As you can see above, vegetated areas in the desert expanses of Turkmenistan and Uzbekistan have generally deteriorated since 2005. While some areas in both countries have seen improvement, this analysis indicates that overall desertification is intensifying throughout this region of Central Asia. This conclusion is consistent with overall climate change theory and predictions. The exact degree to which these desert areas or the peripheries of the desert have deteriorated, however, is not clear. An increase in vegetative health in some areas suggests that the overall environmental trend in the region is not entirely negative. Another approach to understanding climate change’s effects in the region would be to examine the major agricultural productive areas to see if climate change has had an impact on general production."),
                                    
                                    tags$br(),
                                    
                                    tags$h3("Downturn in Agricultural Productivity?", align = "center"),
                                    
                                    tags$p("The most productive agricultural area of the region is the Ferghana Valley, a territory shared among Kyrgyzstan, Tajikistan, and Uzbekistan. In the satellite photograph below, the Ferghana valley is located to the north of the white, snow-capped mountains of Tajikistan. The valley itself is a green bowl surrounded by the mountains of Kyrgyzstan and Tajikistan and is indicated by the red circle on the map below. There is also a 3D rendering included as well.  This part of the region has always been arable, fruitful land. Even during the era of the Silk Road, this valley was the bread basket of Central Asia. Ferghana receives snow melt from the upstream countries with their higher elevations and produces most of the fruit and vegetables for Central Asia countries."),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Ferghana Valley in the Region", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_7", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Ferghana Valley 3D Overview", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_8", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("How has the valley’ vegetative health changed over time?  Experts predict more droughts and periods of agricultural decline as a result of climate change.  We might expect the Ferghana valley to show visible signs of vegetative deterioration. The region as a whole to might experience lower crop yields and potentially higher levels of political instability due to rising food prices or shortages. To verify whether this deterioration has actually happened between 2005 and 2018, we can inspect the NDVI difference map below."),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_9", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("Contrary to expectation, the Ferghana valley is mostly green, indicating that overall vegetative health has improved from 2005. This discovery seems contradictory to the overall consensus of climate change’s effect on agricultural zones. Interestingly, there is widespread improvement of vegetative health in both Kyrgyzstan and more significantly in Tajikistan. Something potentially unexpected is happening in the region.  Considering the geographic location of Tajikistan and Kyrgyzstan—the two upstream countries—a more direct analysis of water within the region might explain this surprising trend."),
                                    
                                    tags$p("As mentioned above, the entire region relies on agricultural production but the vast majority of the land in Central Asia is not suitable for mass agricultural development. Especially the steppes of Kazakhstan and the deserts of Turkmenistan and Uzbekistan. Kyrgyzstan or Tajikistan are barely suitable for widespread agriculture because they are both mountainous countries. The region’s five countries participate in an interesting dynamic. The majority of the water in the region begins in the Kyrgyz and Tajik mountains and flows through rivers towards Kazakhstan, Uzbekistan, and Tajikistan. These three countries are incredibly reliant on this water, which has prompted a variety of tense political disputes when Kyrgyzstan and Tajikistan attempt to control the flow of water for their own domestic purposes. The best illustration of the consequences of large-scale water use in the region is the Aral Sea."),
                                    
                                    tags$br(),
                                    
                                    tags$h3("The Aral Sea", align = "center"),
                                    
                                    tags$p("The Aral Sea is one of the largest lakes in the world becoming a symbol of global environmental concerns because of its radical change over time. Soviet scientists were concerned about how quickly the Aral Sea was shrinking as early as the 1960’s. They even considered diverting rivers from Siberia to reverse its decline, but never began the project. Instead the Aral Sea continued to decline because of water overuse in the region. Below are NDVI maps of the Aral Sea in 2005 and then in 2018, which depict this dramatic decline."),
                                    
                                    tags$br()
                             ),
                                
                                    
                            column(width = 2)
                                    
                             ),
                             
                             fluidRow(
                                    
                                 column(width = 3),
                                 
                                 column(width = 6,

                                    tags$h4("Aral Sea: 2005", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_10", width = "100%", height = "100%"),
                    
                                    tags$br(),
                                    
                                    tags$h4("Aral Sea: 2018", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_11", width = "100%", height = "100%"),

                                    tags$br()
                                    
                                 ),
                                 
                                 column(width = 3)
                             ),
                             
                             fluidRow(
                                 
                                 column(width = 2),
                                 
                                 column(width = 8,
                                    

                                    tags$p("While Turkmenistan, Uzbekistan, and Kazakhstan all have large amounts of oil and natural gas reserves, they also rely heavily on agricultural production. Uzbekistan and Turkmenistan produce a large share of the world’s cotton supply, which is a notoriously high-water use crop. To increase cotton production Uzbekistan and Turkmenistan have created large networks of canals to provide irrigation for cotton fields. Economic incentives and population growth have prompted the expansion of cotton production, the creation of more canals, and the use of more water every year, which has expediated the decline of the Aral Sea. "),
                                    
                                    tags$p("This suggests that water shortages are not yet a serious issue in the region. If water use is up, vegetative health on average is improving, and agricultural output is also increasing, there must be an increase in available water. What is causing this increase in availability? To answer that, let’s take a closer look at one of the main sources of water in Central Asia, the Pamir Mountains of Tajikistan."),
                                    
                                    tags$br(),
                                    
                                    tags$h3("The Pamir Mountains", align = "center"),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_12", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("The Pamir Mountain range in Tajikistan is the furthest extent of the Himalayas that stretches across Northern India, through Pakistan, and then ends in Eastern Tajikistan. While this region of Central Asia is among the most desolate and sparsely populated, its snowmelt creates the economic and political backbone of the entire region. The Pamirs in Tajikistan and Pakistan are depicted above, but NDVI maps from 2005 and 2018 are shown below."),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Pamirs 2005", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_13", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$h4("Pamirs 2018", align = "center"),
                                    
                                    imageOutput(outputId = "Photo_14", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("How has this mountain range changed in terms of vegetation from 2005 to 2018? In the overall regional this area stood out because it was largely black, i.e. covered in non-vegetation. Looking more closely at the Pamirs and comparing the 2005 and 2018 versions above, we see a dramatic change. A very large “greening up” effect is apparent, which indicates that large amounts of the icy, non-vegetative area of the Pamir mountains in 2005 has melted and been replaced by vegetation in 2018."),
                                    
                                    tags$p("This greening up effect is the clearest in the stretch of the Pamirs in southern Tajikistan represented in the red circles. The Pamirs in northern Pakistan also show signs of melting and greening up which is shown within the orange circles. This indicates a rather intuitive trend: large amounts of snow melt over time have increased vegetation within the watershed of that melt. An NDVI difference map is shown below to further demonstrate that throughout the Pamir mountain range vegetative health has improved from 2005."),
                                    
                                    tags$br(),
                                    
                                    imageOutput(outputId = "Photo_15", width = "100%", height = "110%"),
                                    
                                    tags$br(),
                                    
                                    tags$p("The greening up of the Pamirs and the stable agricultural health of the Ferghana Valley are connected. As snowmelt increases in Tajikistan, more water flows towards the downstream countries. This supports increased agricultural production in Uzbekistan and Turkmenistan and the expansion of irrigation for cotton production. Ironically, despite the considerable yearly increase in water from Kyrgyzstan and Tajikistan, the Aral Sea’s decline is not abating, but increasing.  Unfortunately, this is because regional water use is increasing in unison with the increases in water supply. The most prominent impact of climate change in the region is rapid snowmelt, especially in Tajikistan. For now, this trend has not directly impacted the political or economic dynamics of the region, but the implications for the future are clear to see."),
                                    
                                    tags$br(),
                                    
                                    tags$h3("Implications", align = "center"),
                                    
                                    tags$p("The greening up of the Pamir Mountains will have a direct effect on the complicated framework of regional intra-state relations. Both Tajikistan and Kyrgyzstan are relatively poorer than their downstream neighbors because they lack carbon resources. Their main export is actually electricity from hydro-electric damns. They control how much water flows downstream because they have to retain a certain amount of water to provide sufficient domestic electricity in the winter months. How much they conserve and how much they allow to flow downstream to Uzbekistan and Turkmenistan is a political balancing act, which has resulted in border skirmishes and somewhat frequent periods of political tension."),
                                    
                                    tags$p("In Uzbekistan and Turkmenistan, autocratic regimes remain in power by maintaining enough economic output to provide for their citizenries, while also channeling enough funding into police and security forces. In addition to this, every regional state is experiencing exponential population growth, but their economies are not growing in unison. This has created a precarious political climate in the region. Neither Uzbekistan or Turkmenistan can sustain their economic growth or political stability without a continual increase in agricultural production. Similarly, neither Kyrgyzstan or Tajikistan can function without a steady output of electricity from their hydro-electric dams. Kazakhstan is less reliant on an individual economic source, but any country is susceptible to political upheaval as a result of increased food prices."),
                                    
                                    tags$p("Any significant decrease in snowmelt could be a catalyst for region-wide instability. This hasn’t happened yet because snow melt and water availability has only been increasing, but eventually there will be a year in which water flow begins to decrease. One year, less snow will melt in the mountains of Tajikistan and Kyrgyzstan, which will negatively impact the entire region’s agricultural production, economy, and political stability. Even now, the political stability of each Central Asian state is a frequent topic of discussion amongst political scientists and analysts alike. An additional exogenic shock to the economic capacity of regional governments, alongside a sharp increase in food prices, could result in a major deterioration in stability region-wide."),
                                    
                                    tags$p("Pointing out these implications for political and economic stability is not a unique or new narrative. Climate change scientists and experts across the world have already made this same argument: that climate change is the single greatest threat to modern civilization. While the implications for Central Asia are not exclusive to the region, the impact there will be harsher. The key conclusion of this report is that the effects of climate change are not hypothetical predictions that are comfortably set in the future. The effects are visible today. Whether reports from mountainous communities about melting glaciers or Modis NDVI data that demonstrates large-scale snow melt, the evidence that climate change is real and has already begun affecting the world is both clear and easily accessible. The consequences of climate change in Central Asia will most likely be severe and this should serve as yet another reminder of this global threat.")
                                    
                                    
                             ),
                             
                             column(width = 2)
                                    
                                    )
                                    
                                    
                                    
                                    
                         ),
                     
                     
                     tabPanel(
                         
                         title = "About",
                         
                         fluidRow(
                             
                             column(width = 3),
                             
                             column(width = 6,
                                    
                                tags$h1("About the Author"),
                                
                                tags$p("My name is Cian Stryker and I am a graduate student at Harvard University. I am pursuing a Master’s in Russian, Eastern European, and Central Asian studies with a focus on the Digital Silk Road, or the technological aspects of the Belt and Road Initiative. I am especially interested in the digital expansion of Chinese technology and data management systems in Central Asia. "), 
                                
                                tags$p("Here is the link to my personal Github page:", a(href = "https://github.com/CianStryker", "https://github.com/CianStryker")),
                                
                                tags$h1("Source Data and Code"), 
                                
                                tags$p("All analyses and maps were created with ArcGIS Pro. The Modis Data used in this project was taken from USGS (United States Geography Services)", a(href = "https://earthexplorer.usgs.gov/", "Earth Explorer")),
                                
                                tags$p("Here is the link to my Github rep for this website:", a(href = "https://github.com/CianStryker/Climate_Change_and_Central_Asia", "https://github.com/CianStryker/Climate_Change_and_Central_Asia")),
                                
                                tags$h1("Note"),
                                
                                tags$p("If you'd prefer to view this report in a pdf format or would like to download a copy, please download the pdf here:", downloadLink("downloadPDF", "Download Link"))
                             ),
                             
                             column(width = 3)
                         )
                     )
                 

  
            ),

)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$Photo_1 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_1.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    output$Photo_2 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_2.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_3 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_3.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_4 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_4.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_5 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_5.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_6 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_6.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_7 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_7.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_8 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_8.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_9 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_9.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_10 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_10.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_11 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_11.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_12 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_12.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_13 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_13.PNG")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_14 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_14.PNG")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$Photo_15 <- renderImage({
        
        # Calling my file from local storage in Shiny.
        
        filename <- normalizePath(file.path("./Images",
                                            paste("Photo_15.png")))
        
        # Return a list containing the filename and alt text.
        
        list(src = filename,
             contentType = "image/png", 
             width = "100%",
             height = "110%"
        )
        
        # Here I make sure to not delete that file.
        
    }, deleteFile = FALSE)
    
    
    output$downloadPDF <- downloadHandler(
        filename = "Stryker_Prosocial_Behavior.pdf",
        content = function(file) {
            file.copy("www/Climate_Change_in_Central_Asia.pdf", file)
        }
    )


    
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
