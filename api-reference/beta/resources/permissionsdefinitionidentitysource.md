---
title: "permissionsDefinitionIdentitySource resource type"
description: "An abstract type that defines the source of an identity that's requesting permissions through Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsDefinitionIdentitySource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the source of an identity that's requesting permissions through Permissions Management.
This is an abstract type from which the following resources are derived:

- [samlIdentitySource](../resources/samlidentitysource.md) resource type
- [awsIdentitySource](../resources/awsidentitysource.md) resource type
- [edIdentitySource](../resources/edidentitysource.md) resource type
- [localIdentitySource](../resources/localidentitysource.md) resource type

## Properties
None.

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

