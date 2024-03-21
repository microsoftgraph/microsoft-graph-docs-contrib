---
title: "accessPackageResourceAttributeDestination resource type"
description: "An abstract type that exposes objects that define the end system to which the user configured values will be passed."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeDestination resource type

Namespace: microsoft.graph

An abstract type used for the **destination** property of an [accessPackageResourceAttribute](accesspackageresourceattribute.md). The actual destination will be a subtype of this complex type.

Currently, the only supported subtype is [accessPackageUserDirectoryAttributeStore](../resources/accesspackageuserdirectoryattributestore.md).  

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
