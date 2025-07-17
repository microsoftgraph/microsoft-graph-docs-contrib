---
title: "awsAssociatedIdentities resource type"
description: "A container for the different kinds of AWS identities."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# awsAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

A container for the different kinds of AWS identities.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[awsIdentity](../resources/awsidentity.md) collection|The list of all AWS identities.|
|roles|[awsRole](../resources/awsrole.md) collection|The list of AWS roles.|
|users|[awsUser](../resources/awsuser.md) collection|The list of AWS users.|

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


