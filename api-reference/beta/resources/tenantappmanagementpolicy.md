---
title: "tenantAppManagementPolicy resource type"
description: "Application auth method tenant default policy enforces app management operation restrictions."
author: "aricrowe57"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# tenantAppManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Tenant-wide application authentication method policy to enforce app management restrictions for all applications and service principals. This policy applies to all apps and service principals unless overridden when an [appManagementPolicy](../resources/appmanagementpolicy.md) is applied to the object.

Inherits from [policyBase](policybase.md).

## Methods

| Method                                                | Return type                                                             | Description                                                                         |
| :---------------------------------------------------- | :---------------------------------------------------------------------- | :---------------------------------------------------------------------------------- |
| [Get](../api/tenantappmanagementpolicy-get.md)       | [tenantAppManagementPolicy](../resources/tenantappmanagementpolicy.md) | Read the properties of the default app management policy set for applications and service principals. |
| [Update](../api/tenantappmanagementpolicy-update.md) | None                                                                    | Updates the default app management policy for applications and service principals.  |

## Properties

| Property                     | Type                                                                     | Description                                                           |
| :--------------------------- | :----------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| id                           | String                                                                   | The default policy identifier.                                        |
| displayName                  | String                                                                   | The display name of the default policy. Inherited from [policyBase](policybase.md).                                |
| description                  | String                                                                   | The description of the default policy. Inherited from [policyBase](policybase.md).                                |
| isEnabled                    | Boolean                                                                  | Denotes whether the policy is enabled. Default value is `false`.                                    |
| applicationRestrictions      | [appManagementApplicationConfiguration](../resources/appmanagementapplicationconfiguration.md) | Restrictions that apply as default to all application objects in the tenant.               |
| servicePrincipalRestrictions | [appManagementServicePrincipalConfiguration](../resources/appmanagementserviceprincipalconfiguration.md) | Restrictions that apply as default to all service principal objects in the tenant. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAppManagementPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/defaultAppManagementPolicy",
  "id": "string (identifier)",
  "description": "string",
  "displayName": "string",
  "isEnabled": false,
  "applicationRestrictions": {
    "@odata.type":"microsoft.graph.appManagementApplicationConfiguration"
  },
  "servicePrincipalRestrictions": {
    "@odata.type":"microsoft.graph.appManagementServicePrincipalConfiguration"
  }
}
```
