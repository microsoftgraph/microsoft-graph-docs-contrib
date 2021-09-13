---
title: "accessPackageResourceAttributeDestination resource type"
description: "Child of accessPackageQuestion that is a complex type of the destination of an access package attribute."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeDestination resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A child of **accessPackageQuestion** that is a complex type of the destination of an access package attribute. The actual destination will be a subtype of this complex type. Inherits from [accessPackageQuestion](../resources/accesspackagequestion.md).

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