---
title: "accessPackageResourceAttributeDestination resource type"
description: "A complex type used for the `attributeDestination` property an access package."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageResourceAttributeDestination resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

accessPackageResourceAttributeDestination is a complex type used for the attributeDestination property of an access package. The actual destination will be a subtype of this complex type.

Currently,the only supported subtype is [accessPackageUserDirectoryAttributeStore](../resources/accesspackageuserdirectoryattributestore.md).  

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAttributeDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAttributeDestination"
}
```