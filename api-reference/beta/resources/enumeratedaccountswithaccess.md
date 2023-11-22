---
title: "enumeratedAccountsWithAccess resource type"
description: "Contains information on specified external AWS accounts that have access to a storage bucket."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# enumeratedAccountsWithAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

