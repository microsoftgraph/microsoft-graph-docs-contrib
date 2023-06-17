---
title: "singlePropertySchema resource type"
description: "The schema of one property from the results of hunting query API"
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# singlePropertySchema resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The schema of one property in the results of running an [advanced hunting query](../api/security-security-runhuntingquery.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the property.|
|type|String|The type of the property.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.singlePropertySchema"
}
-->
``` json
{
    "Name": "Timestamp",
    "Type": "DateTime"
}
```