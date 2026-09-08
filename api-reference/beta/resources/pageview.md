---
title: "pageView resource type"
description: "Defines a page used to present attributes in a progressive profiling flow."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# pageView resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a page used to present a group of attributes to the user in a progressive profiling flow. Page views let an application organize attribute collection into a staged experience instead of presenting all attributes on one page.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeIds|String collection|Required. The ordered identifiers of the attributes displayed on the page. Each value references the **id** property of an [attributeConfiguration](../resources/attributeconfiguration.md) object in the same handler.|
|description|String|The description displayed on the page.|
|title|String|The title displayed on the page.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.pageView"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pageView",
  "title": "String",
  "description": "String",
  "attributeIds": [
    "String"
  ]
}
```
