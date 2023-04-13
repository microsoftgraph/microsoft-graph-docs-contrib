---
title: "alertComment resource type"
description: "An analyst-generated comment that is associated with an alert or incident."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# alertComment resource type

Namespace: microsoft.graph.security

An analyst-generated comment that is associated with an alert or incident. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment text.|
|createdByDisplayName|String|The person or app name that submitted the comment.|
|createdDateTime|DateTimeOffset|The time when the comment was submitted.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.alertComment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.alertComment",
  "comment": "String",
  "createdByDisplayName": "String",
  "createdDateTime": "String (timestamp)"
}
```