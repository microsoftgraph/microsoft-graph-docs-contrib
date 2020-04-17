---
title: "authorizationPolicy resource type"
description: "Represents a policy that can control authorization settings of Azure Active Directory."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# authorizationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to manage authorization related settings across the company.
Represents a new entity type for directory authorization policies that derives from the base policy entity. This is a singleton policy type.

This will inherit from the base policy type - but be strongly typed on its own. The key difference is that this will be considered a singleton policy type. That is, Create/Delete operations do not apply on this type of policy. By default, if this policy is not yet created, it will return some set of default values. The first time the policy is updated - it will create the object in the backend. We enforce in the directory only one instance of this object can exist.

**Functionality:**

This is a singleton - only one object is ever expected to exist.

|Operation |   |
|----------| - |
|Read      | y |
|Pagination| n |
|Filter    | n |
|OrderBy   | n |

**Permissions:**

Read - Tenant Admin only  
Write - Tenant Admin only  
Create - not supported  
Delete - not supported  

## Properties  
| Property | Type | Description | Required | ReadOnly | Nullable |
|-|-|-|-|-|-|
|`guestUserRole`|`String`| Represents role templateId for the role that should be granted to guest user. Use https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions to find the list of available role templates. Only supported roles today are Default Member User, Default Guest User and Restricted Guest User. | No | No | Yes |
|`enabledPreviewFeatures`|`Collection(string)`| List of features enabled for private preview on the tenant. | No | No | Yes |
|`blockMsolPowerShell`|`Boolean`| To disable the use of MSOL PowerShell set this property to true. Setting to true will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect, Azure AD Graph or Microsoft Graph. | No | No | Yes |


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get authorizationnPolicy](../api/authorizationpolicy-get.md) | [authorizationPolicy](authorizationpolicy.md) | Read properties and relationships of a authorizationPolicy object. |
| [Update authorizationPolicy](../api/authorizationpolicy-update.md) | None | Update a authorizationPolicy object. |


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authorizationPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
   "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "enabledPreviewFeatures": "[String]",
  "guestUserRoleId": "String",
  "blockMsolPowerShell": true 
}
```
