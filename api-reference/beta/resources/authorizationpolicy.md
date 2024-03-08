---
title: "authorizationPolicy resource type"
description: "Represents a policy that can control authorization settings of Microsoft Entra ID."
ms.localizationpriority: medium
ms.custom: has-azure-ad-ps-ref
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# authorizationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that can control Microsoft Entra authorization settings. It's a singleton that inherits from base policy type, and always exists for the tenant. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get authorizationPolicy](../api/authorizationpolicy-get.md) | [authorizationPolicy](authorizationpolicy.md) | Read the authorizationPolicy object. |
| [Update authorizationPolicy](../api/authorizationpolicy-update.md) | None | Update the authorizationPolicy object. |

## Properties  
| Property | Type | Description |
|-|-|-|
|allowedToSignUpEmailBasedSubscriptions|Boolean| Indicates whether users can sign up for email based subscriptions. |
|allowedToUseSSPR|Boolean| Indicates whether users can use the Self-Service Password Reset feature on the tenant. |
|allowEmailVerifiedUsersToJoinOrganization|Boolean| Indicates whether a user can join the tenant by email validation. |
|allowInvitesFrom|allowInvitesFrom|Indicates who can invite guests to the organization. Possible values are: `none`, `adminsAndGuestInviters`, `adminsGuestInvitersAndAllMembers`, `everyone`. `everyone` is the default setting for all cloud environments except US Government. See more in the [table below](#allowinvitesfrom-values).|
|allowUserConsentForRiskyApps|Boolean| Indicates whether [user consent for risky apps](/azure/active-directory/manage-apps/configure-risk-based-step-up-consent) is allowed. Default value is `false`. We recommend that you keep the value set to `false`. |
|blockMsolPowerShell|Boolean| To disable the use of the [MSOnline PowerShell module](/powershell/module/msonline) set this property to `true`. This will also disable user-based access to the legacy service endpoint used by the MSOnline PowerShell module. This doesn't affect Microsoft Entra Connect or Microsoft Graph. |
|defaultUserRolePermissions|[defaultUserRolePermissions](defaultUserRolePermissions.md)| Specifies certain customizable permissions for default user role. |
|description|String| Description of this policy.|
|displayName|String| Display name for this policy. |
|enabledPreviewFeatures|String collection| List of features enabled for private preview on the tenant. |
|guestUserRoleId|Guid| Represents role templateId for the role that should be granted to guests. Refer to [List unifiedRoleDefinitions](../api/rbacapplication-list-roledefinitions.md) to find the list of available role templates. Currently following roles are supported:  User (`a0b1b346-4d3e-4e8b-98f8-753987be4970`), Guest User (`10dae51f-b6af-4016-8d66-8c2a99b929b3`), and Restricted Guest User (`2af84b1e-32c8-42b7-82bc-daa82404023b`). |
|id|String| ID of the authorization policy. Required. Read-only.|
|permissionGrantPolicyIdsAssignedToDefaultUserRole|String collection|Indicates if user consent to apps is allowed, and if it is, the [app consent policy](../resources/permissiongrantpolicy.md) that governs the permission for users to grant consent. Values should be in the format `managePermissionGrantsForSelf.{id}` for user consent policies or `managePermissionGrantsForOwnedResource.{id}` for resource-specific consent policies, where `{id}` is the **id** of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled. |

### allowInvitesFrom values

|Member|Description|
|:---|:---|
|none|Prevent everyone, including admins, from inviting guests. Default setting for US Government.|
|adminsAndGuestInviters|Allow members of Global Administrators, User Administrators, and Guest Inviter roles to invite guests.|
|adminsGuestInvitersAndAllMembers|Allow the above admin roles and all other User role members to invite guests.|
|everyone|Allow everyone in the organization, including guests, to invite guests. The default setting for all cloud environments except US Government.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.

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
  "enabledPreviewFeatures": "[String]",
  "guestUserRoleId": "Guid",
  "id": "String (identifier)",
  "permissionGrantPolicyIdsAssignedToDefaultUserRole": "[String]"
}
```
