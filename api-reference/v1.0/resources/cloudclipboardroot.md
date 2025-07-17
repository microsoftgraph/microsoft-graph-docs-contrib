---
title: "cloudClipboardRoot resource type"
description: "Represents the information and properties of a cloudClipboardRoot"
author: "yuechen7"
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: resourcePageType
toc.title: Cloud clipboard
ms.date: 05/23/2024
---

# cloudClipboardRoot resource type

Namespace: microsoft.graph


Represents the information and properties of a cloudClipboardRoot and serves as an entry point for [cloudClipboardItem](../resources/cloudclipboarditem.md) objects.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudclipboardroot-list-items.md)|[cloudClipboardItem](../resources/cloudclipboarditem.md) collection|Get a list of the **cloudClipboard** items and their properties.|

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|items|[cloudClipboardItem](../resources/cloudclipboarditem.md) collection|Represents a collection of Cloud Clipboard items.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudClipboardRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudClipboardRoot"
}
```

