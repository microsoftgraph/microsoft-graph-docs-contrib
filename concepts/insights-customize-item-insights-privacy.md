---
title: "Overview of customizing item insights privacy in Microsoft Graph"
description: ""
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
ms.custom: scenarios:getting-started
---

# Overview of customizing item insights privacy in Microsoft Graph

## Looking back

Microsoft 365 is getting smarter all the time, providing intelligent business solutions by analysing user activities and relationships to help users achieve more via Microsoft 365. Insights based on documents, emails, calendars, and users help save time and boost productivity. One of the first such applications was Office Delve, launched in 2014, powered by Office Graph. It mapped relationships between people and content from Exchange, SharePoint sites and other applications, respecting the permissions and security policies for displayed content and never storing documents anywhere else but the partition of Office 365.

Along with the joint shipping of Office Graph and Delve, we also delivered a shared set of privacy settings, which control both Office Graph insights and the Delve user experience. It was possible to opt out of Delve at both the tenant level and the user level. After opting out, users lost access to the rich functionality of Delve and, additionally, of various other services that surface insights from Office Graph. 

As Office Graph continued to evolve, it has become a more independent, mature, and powerful service, and a part of every Microsoft 365 experience, eventually evolving to become part of Microsoft Graph. To offer a coherent Microsoft Graph schema, we introduced an [itemInsights](/graph/api/resources/itemInsights?view=graph-rest-beta) entity which inherits all the properties of the pre-existing [officeGraphInsights](/graph/api/resources/officegraphinsights?view=graph-rest-beta) resource, and keep **officeGraphInsights** around for backward compatibility of earlier versions of the insights API. Given this Office Graph evolution, we’ve also disjoined the privacy story for two independent pieces, providing the flexibility to fine-tune item insights in Office Graph and Delve. 


## New item insights privacy settings

### Overview
The new privacy settings provide the ability to configure the visibility of insights derived from Microsoft Graph, between users and other items (such as documents or sites) in Microsoft 365. You can disable the Delve app via the pre-existing controls, but allow other insights-based experiences to continue to provide assistance.

### How to configure?
By default, item insights are enabled for an organization. To disable item insights for all users in an organization, use the **isEnabledInOrganization** property. To disable item insights for a subset of users in an Azure AD group, set the **disabledForGroup** property to the ID of that group; find out more about creating a group and adding users as group members [here](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). This new setting allows administrators more flexible management options using available tools in Azure AD, while disabling item insights for members of just the specified group. Both parameters can be configured by [updating item insights](/graph/api/iteminsightssettings-update?view=graph-rest-beta) in an app, PowerShell, or other applications with due permissions.

Keep in mind that access to read and update these settings is possible only by global administrator role. 

#### Available configurations
Item insights can be disabled for members of one specific Azure AD group or for entire organization only by updating [itemInsightsSettings](/graph/api/resources/itemInsightsSettings?view=graph-rest-beta) object using [update methods](/graph/api/iteminsightssettings-update?view=graph-rest-beta). 
Following privacy configurations are available for administrators to set up:
- Item insights are enabled for all users in the organization without exceptions (default configuration)
  <!-- { "blockType": "ignored" } -->
  
  `'isEnabledInOrganization' == true; 'disabledForGroup' == empty`
- Item insights are enabled in the organization, but item insights of members Azure AD group are disabled
  <!-- { "blockType": "ignored" } -->
  
  `'isEnabledInOrganization' == true; 'disabledForGroup' == ID of one Azure AD group, where administrator collects all users, for whom item insights need to be disabled`
- Item insights are disabled for all users in the organization without exceptions.
  <!-- { "blockType": "ignored" } -->
  
  `'isEnabledInOrganization' == false; 'disabledForGroup' == parameter value does not matter`

>**Note:** New MSGraph APIs are available only in beta for now. 

>**Note:** Make sure that you pass us the correct ID for the group. Object ID of a group you can get from Azure portal. 

>**Note:** Keep in mind that these MSGraph endpoints verify validity of a property `disabledForGroup` value but does not check existence of an Azure AD Group. This means, if you configured a group that did not exist or was deleted after, then item insights setting `disabledForGroup` is not applied.

>**Note:** It might take up to 8 hours to settings will be applied across all O365 experiences. 

>**Note:** Regardless of the new configuration Delve continues respect pre-existed Delve tenant and user level [privacy settings](/sharepoint/delve-for-office-365-admins#control-access-to-delve-and-related-features?view=graph-rest-beta). 


### Dependencies in APIs and UI
At the moment of launch new privacy settings will affect some of the trending and modified insights examples of which you can find below, but we plan to extend the scope of these settings, including more types of insights as they appear. 

The Profile Card of a user that disabled item insights will no longer be able to show documents that this person has recently been working on. The same restriction applies to the Profile result in Microsoft Search in Bing, where the Recent Files panel will be empty. Furthermore, the precision of acronym-expansion in search will be reduced.

When looking at a person in Delve who disabled item insights, that person´s documents will be hidden. 

The Trending and Used collections in Microsoft Graph API will return 403 Forbidden if content is requested around a user that has disabled item insights.

Any user that disabled item insights will have their activity removed from organization-wide analytics that suggests assistive insights to you their colleagues across a multitude of experiences, ranging from Office and Outlook to OneDrive and SharePoint. These analyses are always anonymous regardless of settings, but when a user disabled insights their activity will stop contributing to improving the productivity of others.


### Transition period
We understand that some of tenants might need time to tune new setting and that is why after the feature launching, till the end of 2020, during this time we will respect both Delve settings and new item insights settings, applying the strictest of them. This means that during transition phase a user is considered as opted out if either the user was opt out by Delve controls or item insights settings.

After transition period ends pre-existed Delve settings will control only Delve experience and new settings will affect Graph item insights only. Make sure to configure the item insights according to your organization´s requirements.


#### Side effects
Due to technical reasons SharePoint start page might provide stale suggestions during transition period for tenants who used new settings and disabled item insights for entire organization. We are shipping without this fully resolved because we wanted to get these new settings into the hands of our users as early as possible. Rest assured that we are addressing this issue in upcoming server-side changes. 
