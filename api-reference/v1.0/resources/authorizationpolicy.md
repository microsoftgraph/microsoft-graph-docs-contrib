---
title: "authorizationPolicy resource type"
description: "Represents a policy that can control authorization settings of Azure Active Directory."
ms.localizationpriority: medium
author: "DougKirschner"
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
|allowEmailVerifiedUsersToJoinOrganization|Boolean| Indicates whether a user can join the tenant by email validation. | 
|allowInvitesFrom|allowInvitesFrom|Indicates who can invite external users to the organization. Possible values are: `none`, `adminsAndGuestInviters`, `adminsGuestInvitersAndAllMembers`, `everyone`.  `everyone` is the default setting for all cloud environments except US Government. For more details, see [allowInvitesFrom values](../resources/authorizationpolicy.md#allowinvitesfrom-values). |
|allowUserConsentForRiskyApps|Boolean| Indicates whether [user consent for risky apps](/azure/active-directory/manage-apps/configure-risk-based-step-up-consent) is allowed. We recommend to keep this as `false`. Default value is `false`. |
|allowedToSignUpEmailBasedSubscriptions|Boolean| Indicates whether users can sign up for email based subscriptions. | 
|allowedToUseSSPR|Boolean| Indicates whether users can use the Self-Serve Password Reset feature on the tenant. | 
|blockMsolPowerShell|Boolean| To disable the use of MSOL PowerShell, set this property to `true`. This also disables user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure Active Directory Connect or Microsoft Graph. | 
|defaultUserRolePermissions|[defaultUserRolePermissions](defaultuserrolepermissions.md)| Specifies certain customizable permissions for default user role. | 
|description|String| Description of this policy.|
|displayName|String| Display name for this policy. |    
|guestUserRoleId|Guid| Represents role templateId for the role that should be granted to guest user. Currently following roles are supported:  User (`a0b1b346-4d3e-4e8b-98f8-753987be4970`), Guest User (`10dae51f-b6af-4016-8d66-8c2a99b929b3`), and Restricted Guest User (`2af84b1e-32c8-42b7-82bc-daa82404023b`). |
|id|String| ID of the authorization policy. Required. Read-only.| 

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
  "allowEmailVerifiedUsersToJoinOrganization": "Boolean",
  "allowInvitesFrom": "String",
  "allowUserConsentForRiskyApps": "Boolean",
  "allowedToSignUpEmailBasedSubscriptions": "Boolean",
  "allowedToUseSSPR": "Boolean",
  "blockMsolPowerShell": "Boolean",
  "defaultUserRolePermissions": {"@odata.type": "microsoft.graph.defaultUserRolePermissions"},
  "description": "String",
  "displayName": "String",
  "guestUserRoleId": "Guid",
  "id": "String (identifier)"
}
```
