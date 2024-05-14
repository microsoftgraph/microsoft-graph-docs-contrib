---
title: "entitlementManagementSettings resource type"
description: "Represents tenant-wide settings for Microsoft Entra entitlement management."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# entitlementManagementSettings resource type

Namespace: microsoft.graph


Represents settings that control the behavior of [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This resource doesn't include the catalog creators setting; to view or change the catalog creators role membership, use the [role assignments](unifiedroleassignment.md) API with the entitlement management RBAC provider.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get entitlementManagementSettings](../api/entitlementmanagementsettings-get.md)|[entitlementManagementSettings](entitlementmanagementsettings.md)|Read the properties of an **entitlementManagementSettings** object. |
|[Update entitlementManagementSettings](../api/entitlementmanagementsettings-update.md)|[entitlementManagementSettings](entitlementmanagementsettings.md)|Update the properties of an **entitlementManagementSettings** object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationUntilExternalUserDeletedAfterBlocked|Duration|If **externalUserLifecycleAction** is `blockSignInAndDelete`, the duration, typically many days, after an external user is blocked from sign in before their account is deleted.|
|externalUserLifecycleAction|accessPackageExternalUserLifecycleAction|Automatic action that the service should take when an external user's last access package assignment is removed. The possible values are: `none`, `blockSignIn`, `blockSignInAndDelete`, `unknownFutureValue`.|
|id|String|A constant. Read-only.|

## Relationships
None.
## JSON representation
Here's is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entitlementManagementSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementManagementSettings",
  "durationUntilExternalUserDeletedAfterBlocked": "String (duration)",
  "externalUserLifecycleAction": "String",
  "id": "String"
}
```
