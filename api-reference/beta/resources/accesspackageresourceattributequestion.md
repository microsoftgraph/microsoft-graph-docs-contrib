---
title: "accessPackageResourceAttributeQuestion resource type"
description: "A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver"
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver. 

Inherits from [accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageResourceAttributeQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceAttributeQuestion",
  "question": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```
