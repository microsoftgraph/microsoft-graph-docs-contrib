---
title: "addIn resource type"
description: "Represents a custom behavior that a consuming service can use to call an app in specific contexts."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 04/22/2024
---

# addIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [might configure add-ins](/onedrive/developer/file-handlers/?view=odsp-graph-online&preserve-view=true) for File Handler functionality. The custom behavior lets services like Microsoft 365 call the application in the context of a document the user is working on.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique identifier for the **addIn** object.|
|properties|[keyValue](keyvalue.md) collection|The collection of key-value pairs that define parameters that the consuming service can use or call. You must specify this property when performing a POST or a PATCH operation on the **addIns** collection. Required.|
|type|string|The unique name for the functionality exposed by the app. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addIn"
}-->

```json
{
  "id": "GUID",
  "properties": [{"@odata.type": "microsoft.graph.keyValue"}],
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "addIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
