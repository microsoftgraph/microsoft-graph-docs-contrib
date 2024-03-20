---
title: "allPreApprovedPermissionsOnResourceApp resource type"
description: "Indicates that only permissions on the resource app that is specified in the permissionGrantPreApprovalPolicy are pre-approved for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# allPreApprovedPermissionsOnResourceApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type is used in the conditions of a [permissionGrantPreApprovalPolicy](permissiongrantpreapprovalpolicy.md) to indicate that only permissions on the resource app (API) specified in the policy are pre-approved for consent.

Inherits from [preApprovePermissions](../resources/preapprovedpermissions.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionKind|permissionKind| Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Indicates the scope of permissions that are included in this condition set. Possible values: `all` for all permissions, `enumerated` for a given list of permissions, or `allPermissionsOnResourceApp` for all permissions from a given API. Only `allPermissionsOnResourceApp` is supported for the **allPreApprovedPermissionsOnResourceApp ** object type. Required.|
|permissionType|permissionType|The type of permission being granted. Possible values: `application` for application permissions (app roles), or `delegated` for delegated permissions. Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Required.|
|resourceApplicationId|String|The **appId** of the resource application (the API). Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allPreApprovedPermissionsOnResourceApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allPreApprovedPermissionsOnResourceApp",
  "permissionKind": "allPermissionsOnResourceApp",
  "permissionType": "String",
  "resourceApplicationId": "String"
}
```
