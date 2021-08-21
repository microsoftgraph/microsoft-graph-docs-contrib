---
title: "accessPackageAttributeQuestion resource type"
description: "A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver"
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "Governance"
doc_type: resourcePageType
---

# accessPackageAttributeQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver. 

Inherits from [accessPackageAttributeSource](../resources/accesspackageattributesource.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAttributeQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAttributeQuestion",
  "question": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```