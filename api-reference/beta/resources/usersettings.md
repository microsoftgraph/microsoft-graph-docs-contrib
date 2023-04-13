---
title: "userSettings resource type"
description: "The current user settings for content discovery. "
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: resourcePageType
---

# userSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings that represent a user’s preferences for the following:
- Access to Delve
- [Item insights](../resources/officegraphinsights.md)
- [Regional locale and languages](../resources/regionalandlanguagesettings.md)
- [Shift scheduling](../resources/shiftpreferences.md)
- [Suggestions to merge duplicate contacts](../resources/contactmergesuggestions.md).

Manage Delve accessibility:
  - Checking whether a user and the user's organization have access to Office Delve.
  - Disabling or enabling documents in Office Delve for specific users. 

Configure the visibility of [itemInsights](../resources/iteminsights.md) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1). ItemInsights are derived between users and other items (such as documents or sites) in Microsoft 365:
  - Checking whether a user's item and meeting hours insights are enabled.
  - Disabling or enabling item and meeting hours insights for specific user.

Manage user's locale-based preferences: 
  - Determining what language and regional formatting a user prefers to view applications with.
  - Updating a user's language and regional formatting preferences.

Manage user's work shift preferences: 
  - Checking whether a user can be assigned to shifts in a schedule.
  - Updating a user's shift preferences.
  
Configure [contactMergeSuggestions](../resources/contactmergesuggestions.md):
  - Determining whether suggestion to merge duplicate contacts for a user is enabled.
  - Disabling or enabling suggestion to merge duplicate contacts for a user.

Inherits from [entity](entity.md). To learn how to get or update user settings, see [Get settings](../api/usersettings-get.md) and [Update settings](../api/usersettings-update.md).

> [!NOTE]
> This endpoint works only with the [user](user.md) resource. 

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get user settings](../api/usersettings-get.md) |[userSettings](../resources/usersettings.md)| Get the user and organization settings. |
|[Update user settings](../api/usersettings-update.md) |[userSettings](../resources/usersettings.md)| Update the user current settings. |

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contributionToContentDiscoveryDisabled|Boolean|When set to true, documents in the user's Office Delve are disabled. Users can control this setting in [Office Delve](https://support.office.com/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout). |
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|Reflects the [Office Delve organization level setting](https://support.office.com/article/office-delve-for-office-365-admins-54f87a42-15a4-44b4-9df0-d36287d9531b#bkmk_delveonoff). When set to true, the organization doesn't have access to Office Delve. This setting is read-only and can only be changed by administrators in the [SharePoint admin center](https://support.office.com/article/about-the-office-365-admin-center-758befc4-0888-4009-9f14-0d147402fd23?ui=en-US&rs=en-US&ad=US).|
|id|String|Unique identifier of the user setting. Read-only. Inherited from [entity](entity.md).|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|contactMergeSuggestions|[contactMergeSuggestions](contactmergesuggestions.md)| The user's settings for the visibility of merge suggestion for the duplicate contacts in the user's contact list.|
|itemInsights|[userInsightsSettings](userinsightssettings.md)| The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. [Get userInsightsSettings](../api/userinsightssettings-get.md) through this navigation property. |
|regionalAndLanguageSettings|[regionalAndLanguageSettings](regionalandlanguagesettings.md)| The user's preferences for languages, regional locale and date/time formatting. |
|shiftPreferences|[shiftPreferences](shiftpreferences.md)| The shift preferences for the user. |



## JSON representation

Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSettings",
  "baseType": "microsoft.graph.entity"
}-->
```json
{
  "contributionToContentDiscoveryDisabled": false,
  "contributionToContentDiscoveryAsOrganizationDisabled": false
}

```


