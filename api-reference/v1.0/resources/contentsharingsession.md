---
title: "contentSharingSession resource type"
description: "Represents a content sharing session in a call."
author: "satyakonmsft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# contentSharingSession resource type

Namespace: microsoft.graph

Represents a content sharing session in a call.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                                     | Return Type                                                  | Description                                                     |
|:---------------------------------------------------------------------------|:-------------------------------------------------------------|:----------------------------------------------------------------|
| [Get contentSharingSession](../api/contentsharingsession-get.md )          | [contentSharingSession](contentsharingsession.md)            | Retrieve the properties of a **contentSharingSession** object in a call.  |
| [List contentSharingSessions](../api/call-list-contentsharingsessions.md ) | [contentSharingSession](contentsharingsession.md) collection | Retrieve a list of **contentSharingSession** objects in a call. |


## Properties

| Property | Type   | Description                                                                                                    |
|:---------|:-------|:---------------------------------------------------------------------------------------------------------------|
| id       | String | Unique identifier for the content sharing session. Read-only. Inherited from [entity](../resources/entity.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentSharingSession"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentSharingSession",
  "id": "String (identifier)"
}
```
