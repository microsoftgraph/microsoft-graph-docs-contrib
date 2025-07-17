---
title: "resourceData resource type"
description: "Represents the resource data attached to the change notification sent to the subscriber."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: resourcePageType
ms.subservice: change-notifications
ms.date: 04/18/2024
---

# resourceData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resource data attached to the [change notification](../resources/changenotification.md) sent to the subscriber. This resource is an open type and allows other properties to be passed in.

For details, see [Use Microsoft Graph to get change notifications](change-notifications-api-overview.md).

## Methods

None.

## Properties

None except for Outlook resources where **resourceData** contains the following fields:

| Property | Type | Description |
|:---------|:-----|:------------|
| @odata.type | String | The OData entity type in Microsoft Graph that describes the represented object. |
| @odata.id | String | The OData identifier of the object. |
| @odata.etag | String | The HTTP entity tag that represents the version of the object. |
| id | String | The identifier of the object. |

> **Note:** The **id** value provided in **resourceData** is valid at the time the change notification was generated. Some actions, such as moving a message to another folder, might result in the `id` no longer being valid when the change notification is processed.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "@odata.type",
    "@odata.id",
    "@odata.etag",
    "id"
  ],
  "@odata.type": "microsoft.graph.resourceData"
}-->

```json
{
  "@odata.type": "#microsoft.graph.resourceData"
}
```

<!-- uuid: eb6c98ec-8257-4826-910e-5c603265257f
2020-05-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "change notification resource data resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


