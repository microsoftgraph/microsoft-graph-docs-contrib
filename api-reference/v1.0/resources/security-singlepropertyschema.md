---
title: "singlePropertySchema resource type"
description: "The schema of one property from the results of hunting query API"
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# singlePropertySchema resource type

Namespace: microsoft.graph.security

The schema of one property in the results of running an [advanced hunting query](../api/security-security-runhuntingquery.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the property.|
|type|String|The type of the property.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.singlePropertySchema"
}
-->
``` json
{
    "name": "Timestamp",
    "type": "DateTime"
}
```