---
title: "enumeratedAccountsWithAccess resource type"
description: "Contains information on specified external AWS accounts that have access to a storage bucket."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# enumeratedAccountsWithAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Contains information on specified external AWS accounts that have access to a storage bucket.

Inherits from [accountsWithAccess](../resources/accountswithaccess.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accounts|[authorizationSystem](../resources/authorizationsystem.md) collection|An AWS account.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedAccountsWithAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedAccountsWithAccess"
}
```


