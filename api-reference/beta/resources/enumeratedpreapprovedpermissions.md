---
title: "enumeratedPreApprovedPermissions resource type"
description: "Indicates that only the permissions explicitly preapproved will be allowed for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# enumeratedPreApprovedPermissions resource type

Namespace: microsoft.graph.enumeratedPreApprovedPermissions

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type is used in the conditions of a [permissionGrantPreApprovalPolicy](permissiongrantpreapprovalpolicy.md) to indicate that only the permissions explicitly included in the policy are allowed for consent. If the client application requests more permissions after the policy is created, the policy will not apply.

Inherits from [preApprovePermissions](../resources/preapprovedpermissions.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionIds|String collection|The list of **id** values for the specific resource-specific application permissions to match with. See the **resourceSpecificApplicationPermissions** property of the [servicePrincipal](serviceprincipal.md) object for the list of permissions.|
|permissionKind|permissionKind| Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Indicates the scope of permissions that are included in this condition set. Only `enumerated` is supported to indicate that only a selected set of permissions from a single resource application are allowed. Required.|
|permissionType|permissionType|The type of permission being granted. Possible values: `application` for application permissions (app roles), or `delegated` for delegated permissions. Inherited from [preapprovedpermissions](../resources/preapprovedpermissions.md). Required.|
|resourceApplicationId|String|The **appId** of the resource application (the API). Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedPreApprovedPermissions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedPreApprovedPermissions",
  "permissionKind": "String",
  "permissionType": "String",
  "permissionIds": [
    "String"
  ],
  "resourceApplicationId": "String"
}
```
