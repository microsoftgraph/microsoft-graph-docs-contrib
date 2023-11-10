---
title: "permissionsDefinitionIdentitySource resource type"
description: "An abstract type that defines the source of an identity that's requesting permissions through Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinitionIdentitySource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the source of an identity that's requesting permissions through Permissions Management.
This is an abstract type from which the following resources are derived:
[samlIdentitySource](../resources/samlidentitysource.md)
[awsIdentitySource](../resources/awsidentitysource.md)
[edIdentitySource](../resources/edidentitysource.md)
[localIdentitySource](../resources/localidentitysource.md)

## Properties
None

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsDefinitionIdentitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionIdentitySource"
}
```

