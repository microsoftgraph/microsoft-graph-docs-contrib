---
title: "appManagementPolicy resource type"
description: "Represents an application auth method policy for enforcing app management restrictions on specific application or service principals."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/07/2024
---

# appManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restrictions on app management operations for specific applications and service principals. If this resource is not configured for an application or service principal, the restrictions default to the settings in the [tenantAppManagementPolicy](tenantappmanagementpolicy.md) object.

To learn more about how to use app management policy, see [Microsoft Entra application authentication methods API overview](../resources/applicationauthenticationmethodpolicy.md).

## Methods

| Method                                                         | Return type                                                                | Description                                                                                                            |
| :------------------------------------------------------------- | :------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| [List](../api/appmanagementpolicy-list.md)      | [appManagementPolicy](../resources/appmanagementpolicy.md) collection| Returns a list of app management policies created for applications and service principals along with their properties. |
| [Create](../api/appmanagementpolicy-post.md)    | [appManagementPolicy](../resources/appmanagementpolicy.md) | Creates an app management policy that can be assigned to an application or service principal object.                   |
| [Get](../api/appmanagementpolicy-get.md)       | [appManagementPolicy](../resources/appmanagementpolicy.md) | Gets a single app management policy object.                                                                            |
| [Update](../api/appmanagementpolicy-update.md) | None                                                                       | Updates an app management policy.                                                                                      |
| [Delete](../api/appmanagementpolicy-delete.md) | None                                                                       | Deletes an app management policy from the collection of policies in appManagementPolicies.                             |
| [List applies to](../api/appmanagementpolicy-list-appliesto.md)| [appManagementPolicy](../resources/appmanagementpolicy.md)|Returns a list of applications and service principals to which the policy is applied. |
| [Create applies to](../api/appmanagementpolicy-post-appliesto.md)| None |Assign an appManagementPolicy policy object to an application or service principal object. |
| [Delete applies to](../api/appmanagementpolicy-delete-appliesto.md)| None |Remove an appManagementPolicy policy object from an application or service principal object. |

## Properties

| Property     | Type                                                        | Description                                                            |
| :----------- | :---------------------------------------------------------- | :--------------------------------------------------------------------- |
| description  | String                                                      | The description of the policy. Inherited from [policyBase](policybase.md). |
| displayName  | String                                                      | The display name of the policy. Inherited from [policyBase](policybase.md).|
| id           | String                                                      | The unique identifier for the policy.                                      |
| isEnabled    | Boolean                                                     | Denotes whether the policy is enabled.                                     |
| restrictions | [customAppManagementConfiguration](customAppManagementConfiguration.md) | Restrictions that apply to an application or service principal object. |

## Relationships

| Relationship | Type                                  | Description                                                                         |
| :----------- | :------------------------------------ | :---------------------------------------------------------------------------------- |
| appliesTo    | [directoryObject](directoryobject.md) | Collection of application and service principals to which a policy is applied. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appManagementPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/appManagementPolicies",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "restrictions": {"@odata.type": "microsoft.graph.customAppManagementConfiguration"}
}
```


