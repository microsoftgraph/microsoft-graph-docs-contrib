---
title: "userSettings resource type"
description: "The current user settings for content discovery. "
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: high
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 08/06/2024
---

# userSettings resource type

Namespace: microsoft.graph

The current user settings for content discovery.

Export users' Windows settings and values stored in a cloud.
  - Get a list of the user's [windowsSetting](../resources/windowssetting.md) objects
  - Get a filtered list of the user's [windowsSetting](../resources/windowssetting.md) objects by passing one of the following in the filter query:
    - [windowssettingtype](../resources/enums.md#windowssettingtype-values)
    - [windowsDeviceId](../resources/windowssetting.md#properties)

Inherits from [entity](entity.md). To learn how to get or update user settings, see [Get settings](../api/usersettings-get.md) and [Update settings](../api/usersettings-update.md).

This resource supports:

- Checking whether a user and the user's organization contribute to content discovery.
- Disabling or enabling content discovery for specific users. This also disables documents in Office Delve.

> [!NOTE]
> This endpoint works only with users. You can't use this endpoint with contacts.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get settings](../api/usersettings-get.md) |[userSettings](../resources/usersettings.md)| Get the user and organization settings. |
|[Update settings](../api/usersettings-update.md) |[userSettings](../resources/usersettings.md)| Update the user current settings. |
|[List](../api/usersettings-list-windows.md)|[windowsSetting](../resources/windowssetting.md) collection|Get the **windowsSetting** objects and their properties for the signed in user.|

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|Reflects the [organization level setting](https://support.office.com/en-us/article/office-delve-for-office-365-admins-54f87a42-15a4-44b4-9df0-d36287d9531b#bkmk_delveonoff) controlling delegate access to the [trending](/graph/api/resources/insights-trending) API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected for the whole organization. This setting is read-only and can only be changed by administrators in the [SharePoint admin center](https://support.office.com/article/about-the-office-365-admin-center-758befc4-0888-4009-9f14-0d147402fd23?ui=en-US&rs=en-US&ad=US).|
|contributionToContentDiscoveryDisabled|Boolean|When set to true, the delegate access to the user's [trending](/graph/api/resources/insights-trending) API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected. Users can control this setting in [Office Delve](https://support.office.com/en-us/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout). |
|id|String|Unique identifier of the user setting. Read-only. Inherited from [entity](entity.md).|
|windows|[windowsSetting](../resources/windowssetting.md) collection|The Windows settings of the user stored in the cloud.|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|itemInsights|[userInsightsSettings](userinsightssettings.md)| The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. [Get userInsightsSettings](../api/userinsightssettings-get.md) through this navigation property. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userSettings"
}-->
```json
{
  "contributionToContentDiscoveryDisabled": false,
  "contributionToContentDiscoveryAsOrganizationDisabled": false
}

```

