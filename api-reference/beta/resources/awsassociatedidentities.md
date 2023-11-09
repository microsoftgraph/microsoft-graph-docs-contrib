---
title: "awsAssociatedIdentities resource type"
description: "Represents different kinds of AWS identities"
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents different kinds of AWS identities.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[awsIdentity](../resources/awsidentity.md) collection|Get list of all AWS identities|
|roles|[awsRole](../resources/awsrole.md) collection|Get list of AWS roles|
|users|[awsUser](../resources/awsuser.md) collection|Get list of AWS users|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.awsAssociatedIdentities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAssociatedIdentities"
}
```

