# Integrate with OneNote

OneNote is a popular note-taking tool that's available online and on many mobile and tablet platforms. By integrating your apps with OneNote, it's easier than ever to create empowering apps on your favorite platforms and reach millions of users worldwide. 

Leverage OneNote's notebook, section, and page hierarchy and easy-to-use API to help your users plan and organize ideas and information.

## Platform overview

The OneNote service runs on the Microsoft cloud and provides a RESTful interface for programmatic access to OneNote content. The OneNote API is lightweight and simple--it's built on JSON, HTML, and OData, so you can use it with any language or platform that supports HTTP requests. 

First, your user must be authenticated and grant access to your app. Then you get an access token that you use to interact with OneNote content. See [Get auth tokens](https://developer.microsoft.com/en-us/graph/docs/concepts/auth_overview).
In addition to CRUD support for OneNote resources, the API also provides capabilities such as optical character recognition (OCR), full-text search, and business card extractions.

## Why create OneNote apps?
Integrate OneNote to create apps that people will love. You can use the OneNote API to create and manage notes, lists, pictures, files, and more in OneNote notebooks.

### Collect and organize notes and ideas  
 Use OneNote as a canvas where users can add and arrange their content. The OneNote API makes it easy to write apps so students can take notes and do research, families share plans and ideas, shoppers share pictures--all the things that interest people most. Your app can grab the information people want, send it to OneNote, and then help them organize it.

### Capture information in many formats
 Capture HTML, embed images (sourced locally or at a public URL), video, audio, email messages, and other common file types. OneNote can even render webpages and PDF files as snapshots. The OneNote API supports a set of standard HTML and CSS for OneNote page layout, so you can use tables, inline images, and basic formatting to get the look you want. 

### Use the OneNote ecosystem to enhance your core scenarios
 Tap into other powerful OneNote API features. The API runs OCR on images, supports full-text search, auto-syncs clients, processes images, and extracts business card captures and online product and recipe listings. Use OneNote as your digital memory store in the cloud for notes and lightweight media, or as a data feed for domain-specific data. 
 
### Reach millions of OneNote users on all major platforms
 Use OneNote to increase your app usage. Pre-installed on new Windows devices, available for popular platforms, on the web as OneNote Online, and part of Office 365--100+ million people worldwide actively use OneNote. When you publish apps that leverage the feature-rich OneNote environment, the cross-platform market potential is simply too big to ignore.

## Interactive console
 
Use the [Microsoft Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to try out the OneNote API with your own OneNote notebooks.

To make OneNote API calls from the Graph Explorer, click "Show more samples" in the column on the left. Use the menu to to toggle OneNote 'On'. You will also need to enable the appropriate permissions by clicking "modify permissions" under your account name in the menu on the left. For more about OneNote permissions, see [OneNote permissions and authentication](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference#notes-permissions).

## How-to and conceptual articles

When you're ready to dig deeper, browse our how-to and conceptual articles to learn more about what you can do with OneNote.

* [Authentication and permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference#notes-permissions)
* [Branding guidelines](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-branding)
* [Supported REST operations](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-supported-ops)
* [Get OneNote content and structure](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-get-content)
* [Open the OneNote clients](onenote_open_onenote_client.md)
* [Copy notebooks, sections, and pages](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-copy)
* [Create pages](../api-reference/v1.0/api/section_post_pages.md)
[Update page content](../api-reference/v1.0/api/page_update.md)
* [Add images, videos, and files](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-images-files.md)
* [Create absolute positioned elements](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-abs-pos.md)
* [Extract data](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-extract-data.md)
* [Use note tags](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags.md)
* [Understanding the HTML](onenote_understand_the_html.md)
* [Error and warning codes](onenote_error_codes.md)

## Connect with us
Stay tuned as we expand and improve. We always want to hear your questions and comments, help you figure things out, and keep you up-to-date. Here's how you can connect with us:

- Read the [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183) for news and helpful tips.
- Get expert answers on [Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182).
- Follow us on Twitter: [@onenotedev](http://twitter.com/onenotedev). 
- Send us your ideas and comments on [UserVoice](http://go.microsoft.com/fwlink/?LinkID=396377).