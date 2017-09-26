# Use the Microsoft Graph API to integrate with OneNote

By integrating your apps with OneNote, you can create empowering experiences across multiple platforms that reach millions of users worldwide. You can use Microsoft Graph to access notebooks, sections, and pages in OneNote to create solutions that help your users plan and organize ideas and information.

<!-- I'm unclear about whether we should be referring to the OneNote API or Microsoft Graph. Perhaps an explanation here about the capabilities exposed via the OneNote APIs in Microsoft Graph vs. in the OneNote REST API would be helpful, with info about when to use one or the other? As we reach parity in MS Graph, we won't need that content, but for now, we might want to make that clear to users. -->

## Why create OneNote apps?

<!-- In the following sentence, should we change OneNote API to Microsoft Graph? -->
You can use the OneNote API to create and manage notes, lists, pictures, files, and more in OneNote notebooks.

### Collect and organize notes and ideas  
Use OneNote as a canvas where users can add and arrange their content. Microsoft Graph makes it easy to write apps that enable students to take notes and do research, families to share plans and ideas, or shoppers to share pictures. Your app can grab the information people want, send it to OneNote, and then help them organize it.

### Capture information in many formats
Capture HTML, embed images (sourced locally or at a public URL), video, audio, email messages, and other common file types. OneNote can even render webpages and PDF files as snapshots. Microsoft Graph supports a set of standard HTML and CSS for OneNote page layout, so you can use tables, inline images, and basic formatting to get the look you want. 

<!-- Is this capability in the Microsoft Graph API? 
### Use the OneNote ecosystem to enhance your core scenarios
Tap into other powerful OneNote API features. The API runs OCR on images, supports full-text search, auto-syncs clients, processes images, and extracts business card captures and online product and recipe listings. Use OneNote as your digital memory store in the cloud for notes and lightweight media, or as a data feed for domain-specific data. 
-->
### Reach millions of OneNote users on all major platforms
Use OneNote to increase your app usage. OneNote is preinstalled on new Windows devices, and is available for most platforms, online, and as part of Office 365. When you publish apps that use the feature-rich OneNote environment, you have access to broad cross-platform market potential.

<!-- Might be good to show a few examples of Microsoft Graph API calls here, similar to what we have in the featured scenarios topic: https://developer.microsoft.com/en-us/graph/docs/concepts/featured_scenarios. You could have an H2 section called "What can I do with OneNote APIs in Microsoft Graph?"-->

## Explore the OneNote APIs
Use the [Microsoft Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to try out the OneNote API with your own OneNote notebooks.

To make OneNote API calls from the Graph Explorer, choose **Show more samples** in the column on the left. Use the menu to toggle OneNote **On**. You will also need to enable the appropriate permissions. Under your account name in the menu on the left, choose **modify permissions**. For more information about OneNote permissions, see [Notes permissions](permissions_reference.md#notes-permissions).

## Next steps

To get started with OneNote APIs in Microsoft Graph, see the [OneNote reference content](../api-reference/v1.0/resources/onenote).

<!-- Should we also link to the OneNote API docs on MSDN? -->

<!-- Removed the Connect with use section. On the Graph portal, we link to the MS Graph tags for SO and UV (and we will have blogs too). OneNote feedback should go through those channels as well. -->
