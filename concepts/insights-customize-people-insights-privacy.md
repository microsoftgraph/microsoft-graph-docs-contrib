---
title: "Customizing people insights privacy in Microsoft Graph"
description: "The overview of customizing of people insights at the organization level"
author: "PeterNjorogeMS"
ms.localizationpriority: high
ms.prod: "insights"
ms.custom: scenarios:getting-started
---

# Customizing people insights privacy in Microsoft Graph  (preview)

People insights feature or Working With allows users to view people most relevant to another user within the same organization. This is explained in the [Implementation of the working with feature](people-example.md#implementation-of-the-working-with-feature). People Insight depends on public relationships between the users to generate the list of relevant people.   

## Controls Available 

Based on customer feedback, we are adding two controls to enable Tenant Administrator to be able to customize the feature for their organisation. The controls are: 
|People Insights Controls | Default | Comments |
|-------------------------|---------|----------|
|Entire Organization  | Enabled |
Group of users – Azure AD Group | Enabled | Azure AD Group ID required to disable for that group |

## How to customize people insights? 

This release enables tenant admins to customize the control using REST APIs. The right permissions are required to be able to customize the feature. Keep in mind that the global administrator role is required. 

## Configure People Insights using REST API 

There are two ways to change the default People Insights Control: 

Disable People Insights for all users in the organization, by setting the **isEnabledInOrganization** property of the [insightsSettings](/graph/api/resources/insightssettings?view=graph-rest-beta&preserve-view=true) resource to false. 

Disable People Insights for a subset of users, by assigning these users in an Azure AD group, and setting the **disabledForGroup** property to the ID of that group. Find out more about [creating a group and adding users as members](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). 

Use the update operation to set the **isEnabledInOrganization** and **disabledForGroup** properties accordingly. 

## Keep the following in mind when updating item insights settings: 
* People insights settings are available only in the beta endpoint. 
* Note that the update operation doesn’t check if a group exists, ensure you get the right ID of an Azure AD group from the Azure portal, ensure that the group exists and confirm the users in the group as well if they have been added. If the group doesn’t exist then no changes will be made for any user in the org. 
* Changes made to the controls can take up to 8 Hours before they take effect. 

## Behavior changes in UI and APIs 

This is where the changes will be noticeable, the list will be revised in the future.  
* People Card 
* Delve user Profile 
* Disabling People Insights means that the data will not be generated for the given user but, it doesn’t affect Search and ranking of results. 
