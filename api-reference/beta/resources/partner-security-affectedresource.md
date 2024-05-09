---
title: "affectedResource resource type"
description: "Contains details of the resources that are affected by a security alert."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# affectedResource resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details of the resources that are affected by a security alert.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The resource path of the resource affected by the security alert.|
|resourceType|String|The type of resource.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.partner.security.affectedResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.affectedResource",
  "resourceId": "String",
  "resourceType": "String"
}
```

