---
title: "appManagementPolicy resource type"
description: "An application auth method policy for enforcing app management restrictions on specific applications or service principals."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# appManagementPolicy resource type

Namespace: microsoft.graph

Restrictions on app management operations for specific applications and service principals. If this resource is not configured for an application or service principal, the restrictions default to the settings in the [tenantAppManagementPolicy](tenantappmanagementpolicy.md) object.

## Methods

| Method                                                         | Return type                                                                | Description                                                                                                            |
| :------------------------------------------------------------- | :------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| [List](../api/appManagementPolicy-list.md)      | [appManagementPolicy](../resources/appManagementPolicy.md) | Return a list of app management policies created for applications and service principals along with their properties. |
| [Create](../api/appManagementPolicy-post.md)    | [appManagementPolicy](../resources/appManagementPolicy.md) | Create an app management policy that can be assigned to an application or service principal object.                   |
| [Get](../api/appManagementPolicy-get.md)       | [appManagementPolicy](../resources/appManagementPolicy.md) | Get a single app management policy object.                                                                            |
| [Update](../api/appManagementPolicy-update.md) | None                                                                       | Update an app management policy.                                                                                      |
| [Delete](../api/appManagementPolicy-delete.md) | None                                                                       | Delete an app management policy from the collection of policies in appManagementPolicies.                             |
| [List appliesTo](../api/appManagementPolicy-list-appliesTo.md)| [appManagementPolicy](../resources/appManagementPolicy.md)|Return a list of applications and service principals to which the policy is applied. |
| [Assign appliesTo](../api/appManagementPolicy-post-appliesTo.md)| None |Return a list of applications and service principals to which the policy is applied. |

## Properties

| Property     | Type                                                        | Description                                                            |
| :----------- | :---------------------------------------------------------- | :--------------------------------------------------------------------- |
| id           | String                                                      | Identifier for the policy.                                                 |
| displayName  | String                                                      | The display name of the policy. Inherited from [policyBase](policybase.md).                                        |
| description  | String                                                      | The description of the policy. Inherited from [policyBase](policybase.md).                                         |
| isEnabled    | Boolean                                                     | Denotes whether the policy is enabled.                                      |
| restrictions | [appManagementConfiguration](appManagementConfiguration.md) | Restrictions that apply to an application or service principal object. |

## Relationships

| Relationship | Type                                  | Description                                                                         |
| :----------- | :------------------------------------ | :---------------------------------------------------------------------------------- |
| appliesTo    | [directoryObject](directoryobject.md) | Collection of applications and service principals to which the policy is applied. |

## JSON representation

The following is a JSON representation of the resource.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/appManagementPolicies",
    "id": "string (identifier)",
    "description": "string",
    "displayName": "string",
    "isEnabled": true,
    "restrictions": {
        "@odata.type": "microsoft.graph.appManagementConfiguration"
    }
}
```
