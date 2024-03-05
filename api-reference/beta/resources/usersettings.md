---
title: "userSettings resource type"
description: "The current user settings for content discovery. "
author: "yyuank"
ms.reviewer: "iamut"
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
- [Suggestions to merge duplicate contacts](../resources/contactmergesuggestions.md)

This resource type provides access to the following operations.

Manage Delve accessibility:
  - Determine whether a user and the user's organization have access to Office Delve.
  - Disable or enable documents in Office Delve for specific users. 

Configure the visibility of [itemInsights](../resources/iteminsights.md) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1). Item insights are derived between users and other items (such as documents or sites) in Microsoft 365:
  - Determine whether a user's item and meeting hours insights are enabled.
  - Disable or enable item and meeting hours insights for specific user.

Manage user's locale-based preferences: 
  - Determine what language and regional formatting a user prefers to view applications with.
  - Update a user's language and regional formatting preferences.

Manage users' work shift preferences: 
  - Determine whether a user can be assigned to shifts in a schedule.
  - Update a user's shift preferences.
  
Configure [contactMergeSuggestions](../resources/contactmergesuggestions.md):
  - Determine whether suggestions to merge duplicate contacts for a user is enabled.
  - Disable or enable suggestions to merge duplicate contacts for a user.

Export users' Windows settings and values stored in a cloud:
  - Get a list of the user's [windowsSetting](../resources/windowssetting.md) objects.
  - Get a filtered list of the user's [windowsSetting](../resources/windowssetting.md) objects by passing one of the following in the filter query:
    - [windowssettingtype](../resources/enums.md#windowssettingtype-values)
    - [windowsDeviceId](../resources/windowssetting.md#properties)

Inherits from [entity](entity.md).

> [!NOTE]
> This endpoint works only with the [user](user.md) resource. 

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get user settings](../api/usersettings-get.md) |[userSettings](../resources/usersettings.md)| Get the user and organization settings. |
|[Update user settings](../api/usersettings-update.md) |[userSettings](../resources/usersettings.md)| Update the user current settings. |
|[List Windows settings](../api/usersettings-list-windows.md)|[windowsSetting](../resources/windowssetting.md) collection|Get the **windowsSetting** objects and their properties for the signed in user.|

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
|windows|[windowsSetting](../resources/windowssetting.md) collection|The Windows settings of the user stored in the cloud.|


## JSON representation

The following JSON representation shows the resource type.
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


