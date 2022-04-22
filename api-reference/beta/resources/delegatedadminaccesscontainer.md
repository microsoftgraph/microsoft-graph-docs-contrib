---
title: "delegatedAdminAccessContainer resource type"
description: "An admin access container through which directory roles are assigned via an access assignment."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminAccessContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An admin access container through which directory roles are assigned via an access assignment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainerId|String|The identifier of the access container (for example, a security group). For "securityGroup" access containers, this must be a valid ID of an Azure AD security group in the Microsoft partner's tenant.|
|accessContainerType|delegatedAdminAccessContainerType|The type of access container (for example, security group) that will be assigned one or more roles through a delegated admin relationship. The possible values are: `securityGroup`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessContainer",
  "accessContainerId": "String",
  "accessContainerType": "String"
}
```

