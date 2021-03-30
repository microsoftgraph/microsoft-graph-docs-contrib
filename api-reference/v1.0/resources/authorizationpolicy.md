---
title: "authorizationPolicy resource type"
description: "Represents a policy that can control authorization settings of Azure Active Directory."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# authorizationPolicy resource type

Namespace: microsoft.graph

Represents a policy that can control Azure Active Directory authorization settings. It's a singleton that inherits from base policy type, and always exists for the tenant.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get authorizationPolicy](../api/authorizationpolicy-get.md) | [authorizationPolicy](authorizationpolicy.md) | Read the authorizationPolicy object. |
| [Update authorizationPolicy](../api/authorizationpolicy-update.md) | None | Update the authorizationPolicy object. |

## Properties  
| Property | Type | Description | 
|-|-|-|
|id|String| ID of the authorization policy. Required. Read-only.| 
|displayName|String| Display name for this policy. |  
|description|String| Description of this policy.|  
|blockMsolPowerShell|Boolean| To disable the use of MSOL PowerShell set this property to true. Setting to true will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect or Microsoft Graph. | 
|defaultUserRolePermissions|[defaultUserRolePermissions](defaultuserrolepermissions.md)| Specifies certain customizable permissions for default user role. | 
|allowedToUseSSPR|Boolean| Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant. | 
|allowedToSignUpEmailBasedSubscriptions|Boolean| Indicates whether users can sign up for email based subscriptions. | 
|allowEmailVerifiedUsersToJoinOrganization|Boolean| Indicates whether a user can join the tenant by email validation. | 
|allowInvitesFrom|allowInvitesFrom|Indicates who can invite external users to the organization. Possible values are: `none`, `adminsAndGuestInviters`, `adminsGuestInvitersAndAllMembers`, `everyone`.  `everyone` is the default setting for all cloud environments except US Government. See more in the [table below](#allowinvitesfrom-values). |

### allowInvitesFrom values

|Member|Description|
|:---|:---|
|none|Prevent everyone, including admins, from inviting external users. Default setting for US Government.|
|adminsAndGuestInviters|Allow members of Global Administrators, User Administrators, and Guest Inviter roles to invite external users.|
|adminsGuestInvitersAndAllMembers|Allow the above admin roles and all other User role members to invite external users.|
|everyone|Allow everyone in the organization, including guest users, to invite external users. The default setting for all cloud environments except US Government.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authorizationPolicy",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "blockMsolPowerShell": true,
  "defaultUserRolePermissions": {"@odata.type": "microsoft.graph.defaultUserRolePermissions"},
  "allowedToUseSSPR": true,
  "allowedToSignUpEmailBasedSubscriptions": true,
  "allowEmailVerifiedUsersToJoinOrganization": true,
  "allowInvitesFrom": "String"
}
```
