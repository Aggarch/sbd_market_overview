# screenshots 

library(webshot)
URL <- "http://rstudio.github.io/leaflet/"


webshot(URL, cliprect = "viewport")

webshot(URL, cliprect = c(200, 5, 400, 300))

webshot(URL, selector = c("#features"))


inflation <- "https://cnordenlow.shinyapps.io/usInflationMonitor/"


webshot(inflation, delay = 6, c(200, 5, 400, 300))

webshot(inflation)

webshot(URL, cliprect = c(200, 5, 400, 300))

webshot(URL, selector = c("#features"))

# Expand selection region
webshot(inflation,
        delay = 7, 
        selector = c("div#plot_dash_pce.shiny-plot-output.shiny-bound-output"),
        vwidth = 1350,
        vheight = 1000,
        # expand = c(-10, -20, -20, -20),
        zoom =.90,
        "pce.png")




# advanced ----------------------------------------------------------------

webshot("http://www.reddit.com/", "reddit-input.png",
        selector = c("#search", "#login_login-main"),
        eval = "casper.then(function() {
    // Check the remember me box
    this.click('#rem-login-main');
    // Enter username and password
    this.sendKeys('#login_login-main input[type=\"text\"]', 'my_username');
    this.sendKeys('#login_login-main input[type=\"password\"]', 'password');

    // Now click in the search box. This results in a box expanding below
    this.click('#search input[type=\"text\"]');
    // Wait 500ms
    this.wait(500);
  });"
)
