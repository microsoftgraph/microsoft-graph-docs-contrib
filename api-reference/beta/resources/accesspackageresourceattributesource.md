---
title: "accessPackageResourceAttributeSource resource type"
description: "Used for the `accessPackageAttribute` property of an access package resource."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageResourceAttributeSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is the complex type of the source of an [accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) used for the attributeSource property. The actual source will be a subtype of this complex type. Currently, the only supported subtype is [accessPackageResourceAttributeQuestion](../resources/accesspackageresourceattributequestion.md). 

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAttributeSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAttributeSource"
}
```