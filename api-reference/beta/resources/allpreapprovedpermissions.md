---
title: "allPreApprovedPermissions resource type"
description: "Indicates that all permissions for all APIs are pre-approved for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# allPreApprovedPermissions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type is used in the conditions of a [permissionGrantPreApprovalPolicy](permissiongrantpreapprovalpolicy.md) to indicate that all permissions for all APIs are pre-approved for consent.

Inherits from [preApprovedPermissions](../resources/preapprovedpermissions.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionKind|permissionKind| Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Indicates the scope of permissions that are included in this condition set. Possible values: `all` for all permissions, `enumerated` for a given list of permissions, or `allPermissionsOnResourceApp` for all permissions from a given API. Only `all` is supported for the **allPreApprovedPermissions** object type. Required.|
|permissionType|permissionType| The type of permission being granted. Possible values: `application` for application permissions (app roles), or `delegated` for delegated permissions. Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allPreApprovedPermissions",
  "baseType": "microsoft.graph.preApprovedPermissions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allPreApprovedPermissions",
  "permissionKind": "String",
  "permissionType": "String"
}
```
