---
title: "Customizing people insights privacy in Microsoft Graph"
description: "The overview of customizing of people insights at the organization level"
author: "PeterNjorogeMS"
ms.localizationpriority: high
ms.prod: "insights"
ms.custom: scenarios:getting-started
---

# Customizing people insights privacy in Microsoft Graph  (preview)

People insights feature or working-with allows users to view people most relevant to another user within the same organization. This is explained in the [implementation of the working with feature](people-example.md#including-a-person-as-relevant-or-working-with). People insight depends on public relationships between the users to generate the list of relevant people.   


## How to customize people insights? 

This release enables tenant admins to customize the control using REST APIs. The right permissions are required to be able to customize the feature. Keep in mind that the global administrator role is required. 

## Configure people insights using REST API 

There are two ways to change the default people insights control: 

- Disable people insights for all users in the organization, by setting the **isEnabledInOrganization** property of the [insightsSettings](/graph/api/resources/insightssettings?view=graph-rest-beta&preserve-view=true) resource to false. 

- Disable people insights for a subset of users, by assigning these users in an Azure AD group, and setting the **disabledForGroup** property to the ID of that group. Find out more about [creating a group and adding users as members](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). 

Use the [update](/graph/api/insightssettings-update?view=graph-rest-beta&preserve-view=true) operation to set the **isEnabledInOrganization** or **disabledForGroup** properties accordingly for people insights. 

Keep the following in mind when updating item insights settings: 
* People insights settings are available only in the beta endpoint. 
* Note that the update operation doesn’t check if a group exists. Make sure to get the correct ID of the Azure AD group from the Azure portal, that the group exists and that the intended users have been added to the group. If the group doesn’t exist, then no changes will be made for any user in the organization. 
* Changes made to the controls can take up to 8 hours before they take effect. 

## Behavior changes in UI and APIs 

Disabling people insights means that the data will not be generated for the given user; it doesn’t affect search and ranking of results.

This is where the changes will be noticeable, the list will be revised in the future.  
* Microsoft 365 [profile card](https://support.microsoft.com/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501)
* User profile in Delve

