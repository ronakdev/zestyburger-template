# ZestyBurger Template

## What is this?

This is a template that you can use with [Zesty.io](https://zesty.io) to build a burger-based website.

## How do I use it?

Follow [this])(https://developer.zesty.io/docs/templating/building-a-template-with-github/) to add it to your local Zesty instance
After that, you'll need to add the endpoints manually to the site. You can choose which endpoints to load.

* [Add to Calendar Endpoint - Global (Enables the 'Add to Calendar Functionality on all events pages')](blob/master/views/event.ics.tpl)
* [Add to Calendar Endpoint - Local (Enables the 'Add to Calendar Functionality on all events pages')](blob/master/views/localevent.ics.tpl)
* [About Data Endpoint (Enables ability to get data from the about page)](blob/master/views/aboutdata.tpl)
* [Blog List Endpoint (Enables ability to get blog posts)](blob/master/views/bloglist.tpl)
* [Careers List Endpoint (Enables ability to get all career data)](blob/master/views/careerslist.tpl)
* [Events List Endpoint (Enables ability to get event data)](blob/master/views/eventslist.tpl)
* [Locations List Endpoint (Enables ability to get a list of the locations)](blob/master/views/locationslist.tpl)
* [Menu List Endpoint (Enables ability to get all menu data)](blob/master/views/menulist.tpl)


## Can I see it live?

Yes! Visit the site [here](http://burger.zesty.site). You can also see the iOS App that was created from this [using the ZestySwiftContentEndpointWrapper](https://github.com/zesty-io/ZestySwiftContentEndpointWrapper) over [here](https://github.com/zesty-io/zesty-ios-swift-application-basic-example)

## I'm having an issue, what do I do?
Feel free to create [an issue](issues) on the repository.