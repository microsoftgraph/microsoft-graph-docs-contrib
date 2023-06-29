---
title: "Item insights in Microsoft Graph"
description: "Learn about item insights, user-centric recommendations for you and those you work with, based on your collaborative file-based experiences in Microsoft 365."
author: "simonhult"
ms.localizationpriority: high
ms.prod: "insights"
ms.custom: scenarios:getting-started
---
# Item insights overview

Item insights are user-centric recommendations for you and those you work with, based on your collaborative work in Microsoft 365.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWPGbr] 

## Computation of item insights
Microsoft 365 is the world’s productivity cloud, where many features are designed around you, as the user. By interacting with resources such as files in Microsoft 365, you produce signals that Microsoft aggregates and assembles into a graph for your organization. In the graph, the signal data is represented as relationships between you and the other resources. Derived from signals in the graph are insights that power a few Microsoft 365 experiences. Examples of experiences include suggesting the best time for the next team meeting, helping you sort out personal and work information on your phone, and many other intelligence scenarios. 

What are interactions with Microsoft 365 resources like, and how do item insights result from them? Microsoft 365 lets you collaborate with colleagues in many ways – chatting with colleagues in Teams chats or channel conversations, over documents such as lists in SharePoint, PowerBI reports in OneDrive for Business, SharePoint sites, Teams, or Outlook email. Microsoft derives insights from analyzing activities (such as modifying, commenting, or sharing), and applies these insights to empower user-centric experiences with recommendations for users of Microsoft 365, thereby increasing overall company productivity. Item insights are a type of insights that Microsoft calculates using advanced machine learning techniques, and applies as content recommendations for you and your colleagues within the organization.

> [!NOTE]
> This article does not address other insight-based experiences in Microsoft 365, such as Viva Insights, the Insights add-in for Outlook, WorkWith feature, MyAnalytics, and Insights dashboard. 

## Item insights in Microsoft 365 
Item insights power a few prominent file-based experiences in Microsoft 365.

### Recommended files 
An example of an experience empowered by item insights is the files under **Recommended** in Office.com. Microsoft Graph gathers signals of those files accessible to you that have ongoing activity, derives item insights from these signals, and applies these insights to recommend files so you can quickly find the ones that matter to you most. With item insights, you can quickly get to your most relevant documents.
![item insights power Recommended in Office.com](images/Recommended-Office-com.PNG)

### Files for discovery 
You can discover potentially useful content that you can access but may not have seen before, under **Discover** in Delve or Outlook mobile. These are documents trending around you, calculated based on the activity of your closest network of people in your organization. They include files stored in OneDrive for Business and SharePoint Online.  
![item insights power Discover in Delve and Outlook Mobile](images/discover-Delve-OutlookMobile.PNG)

### Recent files in card-based interfaces
In card-based interfaces such as Delve and [the profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501) item insights bring forward OneDrive, SharePoint, or Outlook files that you have modified recently or shared with the person looking at your profile, which has access to that content. Such personalized insights help your colleagues save time searching for the right person or information.  
![item insights power recent files in card-based interfaces](images/Recent-files-in-card-based-interfaces.PNG)

## Microsoft runs on trust
Microsoft uses only your activities in a shared working space (activities such as sharing, modifying, commenting actions) within your organization to calculate recommendations for others. That means, if you simply glanced at or clicked on a shared document without changing or commenting on it, your colleagues will not see the document as a recommendation because you browsed the document. 

Microsoft does not use your activities from working in a private space to calculate recommendations for others. That means no one can get insights from your private documents.  

Finally, your colleagues can see recommendations built only on content that they already have access to. If Alice collaborates with Robert on writing a document, 
Alice and Robert can both get recommendations based on this collaborative work. Kate, who does not have access to the document, does not see recommendations associated with this file or the collaboration between Alice and Robert. This rule applies to all users in an organization. In our example, that includes Kate’s manager and administrators, who would not see recommendations based on content that they do not have access to. 

## Disabling item insights
By allowing Microsoft to compute item insights from signals in your shared workspaces, you turn activities and content into usable recommendations, and make this knowledge easily discoverable and usable to you and your colleagues in your organization. By doing so, you are helping to boost the productivity of your entire organization.  

Even though Microsoft never discloses your private documents and only uses insights of content that users already have access to, there can be cases where the risk of discovering the content by undesirable users outweighs the possible benefits. In these cases, you should consider turning off item insights. Remember that disabling item insights is not a security measure, and you should always start by reviewing your work patterns and ensure that your security access is configured as intended. 
If you want to make your content and activities less discoverable, you can disable item insights by using the [toggle available in MyAccount, under Settings & Privacy](https://myaccount.microsoft.com/settingsandprivacy/privacy).  
![item insights toggle in MyAccount](images/item-insights-toggle-in-MyAccount.PNG)

### Disable or re-enable item insights 
By default, item insights are enabled. Administrators use specific settings to control item insights. If an administrator disables your item insights, you can re-enable them only by working with the administrator. 
[Learn more about ways for an administrator to control item insights](insights-customize-item-insights-privacy.md).

Updating settings can take up to 24 hours to apply within the user’s organization across Microsoft 365 experiences.

After your item insights are disabled, the following happens:
* Microsoft stops using your signals when computing recommendations for others. Your colleagues stop receiving item insights based on activities that you perform in shared workspaces. Your colleagues’ insights-based experience becomes less rich in places such as the **Recommended** section of files in Office.com and Delve, as shown in the following example, if you were signed in with the user name MeganB.
![disabled item insights in recommended in office](images/disabled-item-insights-in-office.PNG)
* Your colleagues can still see files that you have shared with them from OneDrive for Business and SharePoint in experiences such as Delve and [the profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501). To prevent these places from displaying shared files, remove the sharing permissions on the files.  
* Experiences that show content trending around you is inaccessible to others, in places such as Delve and the **Discover** section in Outlook mobile. The lack of trending insights also reduces your personalized relevance in Microsoft Search since it cannot use your trending content as signals for relevance.
![disabled item insights in Delve](images/disabled-item-insights-in-delve.PNG)
* Insights about your file-based activities in collaborative workspaces are no longer shared with others, protecting you from undesirable discovery of your data. On the other hand, your access to experiences showing trending content is not revoked. You can see the activities and data of users who have not disabled item insights.
* [Suggested meeting hours](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) are no longer calculated and shown on your profile card.

## API reference

Looking for the API reference for this service?

- [Insights API in Microsoft Graph v1.0](/graph/api/resources/officegraphinsights)
- [Insights API in Microsoft Graph beta](/graph/api/resources/iteminsights?view=graph-rest-beta&preserve-view=true)


## Next steps

- Use the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to try out the insights API with your own files. Sign in, expand **Insights** in the column on the left, and try the sample queries.
- Learn more about [customizing item insights privacy for users](insights-customize-item-insights-privacy.md), and the [insights settings API (preview)](/graph/api/resources/insightssettings?view=graph-rest-beta&preserve-view=true) that supports the customization.
