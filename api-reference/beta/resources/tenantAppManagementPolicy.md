---
title: "tenantAppManagementPolicy resource type"
description: "Application auth method tenant default policy enforces app management operation restrictions."
author: "madansr7"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# tenantAppManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Tenant-wide application authentication method policy to enforce app management restrictions for all applications and service principals. This policy applies to all apps and service principals unless overridden when an [appManagementPolicy](../resources/appmanagementpolicy.md) is applied to the object.

Inherits from [policyBase](policybase.md).

## Methods

| Method                                                | Return type                                                             | Description                                                                         |
| :---------------------------------------------------- | :---------------------------------------------------------------------- | :---------------------------------------------------------------------------------- |
| [Get](../api/tenantAppManagementPolicy-get.md)       | [tenantAppManagementPolicy](../resources/tenantAppManagementPolicy.md) | Read the properties of the default app management policy set for applications and service principals. |
| [Update](../api/tenantAppManagementPolicy-update.md) | None                                                                    | Updates the default app management policy for applications and service principals.  |

## Properties

| Property                     | Type                                                                     | Description                                                           |
| :--------------------------- | :----------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| id                           | String                                                                   | The default policy identifier.                                        |
| displayName                  | String                                                                   | The display name of the default policy. Inherited from [policyBase](policybase.md).                                |
| description                  | String                                                                   | The description of the default policy. Inherited from [policyBase](policybase.md).                                |
| isEnabled                    | Boolean                                                                  | Denotes whether the policy is enabled. Default value is `false`.                                    |
| applicationRestrictions      | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to all application objects in the tenant.               |
| servicePrincipalRestrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to all service principal objects in the tenant. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/tenantAppManagementPolicy",
  "id": "string (identifier)",
  "description": "string",
  "displayName": "string",
  "isEnabled": false,
  "applicationRestrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  },
  "servicePrincipalRestrictions": {
    "@odata.type":"microsoft.graph.appManagementConfiguration"
  }
}
```
