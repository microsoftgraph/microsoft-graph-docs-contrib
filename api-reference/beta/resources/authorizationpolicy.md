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

Used to manage authorization related settings across the company. This inherits from the base policy type - but be strongly typed on its own. The key difference is that this is a singleton policy type. That is, create and delete operations do not apply on this type of policy. By default, if this policy is not yet created, it will return some set of default values. The first time the policy is updated - it will create the object in the backend. We enforce in the directory only one instance of this object can exist.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get authorizationPolicy](../api/authorizationpolicy-get.md) | [authorizationPolicy](authorizationpolicy.md) | Read the authorizationPolicy object. |
| [Update authorizationPolicy](../api/authorizationpolicy-update.md) | None | Update the authorizationPolicy object. |

## Properties  
| Property | Type | Description | 
|-|-|-|
|id|String| Id of the authorization policy. Required. Read-only.| 
|displayName|String| Display name for this policy. Required. |  
|description|String| Description of this policy.|  
|guestUserRoleId|Guid| Represents role templateId for the role that should be granted to guest user. Use https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions to find the list of available role templates. Only supported roles today are User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3) and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b). | 
|enabledPreviewFeatures|Collection(string)| List of features enabled for private preview on the tenant. | 
|blockMsolPowerShell|Boolean| To disable the use of MSOL PowerShell set this property to true. Setting to true will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect, Azure AD Graph or Microsoft Graph. | 





## Relationships
None

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
  "guestUserRoleId": Guid,
  "blockMsolPowerShell": true 
}
```
