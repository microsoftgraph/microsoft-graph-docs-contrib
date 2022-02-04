---
title: "accessPackageResourceAttributeDestination resource type"
description: "An abstract type that exposes objects that define the end system to which the user configured values will be passed."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeDestination resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type used for the **attributeDestination** property of an [accessPackageResourceAttribute](accesspackageresourceattribute.md). The actual destination will be a subtype of this complex type.

Currently, the only supported subtype is [accessPackageUserDirectoryAttributeStore](../resources/accesspackageuserdirectoryattributestore.md).  

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageResourceAttributeDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceAttributeDestination"
}
```
