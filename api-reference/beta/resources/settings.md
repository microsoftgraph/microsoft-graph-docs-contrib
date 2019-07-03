---
title: "settings resource type"
description: "Gets the current settings for a user as applicable for the Analytics API."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# settings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Analytics API includes the settings resource type. This resource gets the current settings for a user as applicable for the Analytics API. For the Analytics API to return results for users, they must have a valid MyAnalytics license, be opted in to using MyAnalytics, and have a cloud-hosted mailbox that’s graph-enabled.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| Get | settings | Gets the following property settings for a user.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hasGraphMailbox|Boolean|Is the user's primary mailbox hosted in the cloud and is it graph-enabled?|
|hasLicense|Boolean|Does the user have a MyAnalytics license assigned?|
|hasOptedOut|Boolean|Has the user opted out of MyAnalytics?|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settings",
  "baseType": null
}-->

```json
{
  "hasGraphMailbox": true,
  "hasLicense": true,
  "hasOptedOut": false
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "settings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->