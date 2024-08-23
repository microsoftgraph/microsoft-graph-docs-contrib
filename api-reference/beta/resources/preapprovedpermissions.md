---
title: "preApprovedPermissions resource type"
description: "Describes the set of permissions that are pre-approved for a resource."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# preApprovedPermissions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **preApprovedPermissions** type describes the set of permissions that are pre-approved for the resource. The type is an abstract base type from which the following types are derived:

* [allPreApprovedPermissions](allPreApprovedPermissions.md) indicates all permissions for all APIs are pre-approved
* [allPreApprovedPermissionsOnResourceApp](allPreApprovedPermissionsOnResourceApp.md) indicates all permissions for a specified API are pre-approved
* [enumeratedPreApprovedPermissions](enumeratedPreApprovedPermissions.md) indicates that only the specified permissions have been pre-approved

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionKind|permissionKind| Indicates the scope of permissions that are included in this condition set. Possible values: `all` for all permissions, `enumerated` for a given list of permissions, or `allPermissionsOnResourceApp` for all permissions from a given API. Required.|
|permissionType|permissionType|The type of permission being granted. Possible values: `application` for application permissions, or `delegated` for delegated permissions. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.preApprovedPermissions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.preApprovedPermissions",
  "permissionKind": "String",
  "permissionType": "String"
}
```
