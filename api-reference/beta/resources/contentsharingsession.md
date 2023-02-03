---
title: "contentSharingSession resource type"
description: "Represents a content sharing session in a call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# contentSharingSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a content sharing session in a call.

## Methods

| Method                                                             | Return Type                                                 | Description                                                                     |
|:-------------------------------------------------------------------|:------------------------------------------------------------|:--------------------------------------------------------------------------------|
| [Get contentSharingSession](../api/contentsharingsession-get.md )                                     | [contentSharingSession](contentsharingsession.md)                                             | Retrieve the properties of a **contentSharingSession** object.                                         |
| [List contentSharingSessions](../api/call-list-contentsharingsessions.md )              | [contentSharingSession](contentsharingsession.md) collection                    | Retrieve a list of **contentSharingSession** objects in a call.                                            |

## Properties

|Property                 |Type                      |Description                                                                        |
|:---                     |:---                      |:---                                                                               |
| id                      | String                   | Unique identifier for the content sharing session. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentSharingSession"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentSharingSession",
  "id": "String(identifier)"
}
```
