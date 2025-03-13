---
title: "controlScore resource type"
description: "This resource contains a tenant score and description for an individual control."
ms.localizationpriority: medium
author: preetikr
ms.subservice: security
doc_type: resourcePageType
ms.date: 07/22/2024
---

#  controlScore resource type

Namespace: microsoft.graph

Contains a tenant score and description for an individual control.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|controlCategory|String|Control action category (Identity, Data, Device, Apps, Infrastructure).|
|controlName|String|Control unique name.|
|description|String| Description of the control.|
|score|Double|Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.controlScore"
}-->

```json
{
  "controlCategory": "String",
  "controlName": "String",
  "description": "String",
  "score": "Double"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "controlScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

