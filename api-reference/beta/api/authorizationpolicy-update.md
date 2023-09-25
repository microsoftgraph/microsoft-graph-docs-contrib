---
title: "Update authorizationpolicy"
description: "Update the properties of authorizationPolicy object."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Update authorizationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [authorizationPolicy](../resources/authorizationpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.ReadWrite.Authorization|
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.ReadWrite.Authorization|

When calling on behalf of a user, the user needs to have the *Privileged Role Administrator* [Azure AD role](/azure/active-directory/roles/permissions-reference).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /policies/authorizationPolicy/authorizationPolicy
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |
| Content-type | application/json |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowEmailVerifiedUsersToJoinOrganization|Boolean| Indicates whether a user can join the tenant by email validation. |
|allowUserConsentForRiskyApps|Boolean| Indicates whether [user consent for risky apps](/azure/active-directory/manage-apps/configure-risk-based-step-up-consent) is allowed. Default value is `false`. We recommend that you keep the value set to `false`.|
|allowedToSignUpEmailBasedSubscriptions|Boolean| Indicates whether users can sign up for email-based subscriptions. |
|allowedToUseSSPR|Boolean| Indicates whether users can use the Self-Serve Password Reset feature on the tenant. |
|blockMsolPowerShell|Boolean| To disable the use of MSOL PowerShell, set this property to `true`. This also disables user-based access to the legacy service endpoint used by MSOL PowerShell. This doesn't affect Azure Active Directory Connect or Microsoft Graph. |
|defaultUserRolePermissions|[defaultUserRolePermissions](../resources/defaultUserRolePermissions.md)| Specifies certain customizable permissions for default user role. |
|description|String| Description of this policy. |
|displayName|String| Display name for this policy. |
|enabledPreviewFeatures|String collection| List of features enabled for private preview on the tenant. |
|guestUserRoleId|Guid| Represents role templateId for the role that should be granted to guest user. Refer to [List unifiedRoleDefinitions](./rbacapplication-list-roledefinitions.md) to find the list of available role templates. Only supported roles today are User (`a0b1b346-4d3e-4e8b-98f8-753987be4970`), Guest User (`10dae51f-b6af-4016-8d66-8c2a99b929b3`), and Restricted Guest User (`2af84b1e-32c8-42b7-82bc-daa82404023b`). |
|permissionGrantPolicyIdsAssignedToDefaultUserRole | String collection | Indicates whether user consent to apps is allowed, and if it is, which [app consent policy](/azure/active-directory/manage-apps/manage-app-consent-policies) governs the permission for users to grant consent. Values should be in the format `managePermissionGrantsForSelf.{id}`, where `{id}` is the **id** of a built-in or custom [app consent policy](/azure/active-directory/manage-apps/manage-app-consent-policies). An empty list indicates user consent to apps is disabled. |

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Update or set Guest user access level for the tenant

#### Request

Here's an example of the request. In this example, guest access level is modified to Restricted Guest User.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_guestuserrole"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "guestUserRole":"2af84b1e-32c8-42b7-82bc-daa82404023b"
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Enable new feature for preview on tenant

#### Request

Here's an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_enabledpreviewfeatures"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "enabledPreviewFeatures":[
      "assignGroupsToRoles"
   ]
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 3: Block MSOL PowerShell in tenant

#### Request

Here's an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_blockmsolpowershell"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "blockMsolPowerShell":true
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 4: Disable default user role's permission to create applications

#### Request

Here's an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_defaultuserrolepermissions"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "defaultUserRolePermissions":{
      "allowedToCreateApps":false
   }
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 5: Enable default user role to use Self-Serve Password Reset feature

#### Request

Here's an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_allowedtousesspr"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "allowedToUseSSPR":true
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 6: Disable user consent to apps for default user role

#### Request

Here's an example of the request.


<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_disableusercontent"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "permissionGrantPolicyIdsAssignedToDefaultUserRole":[
   
   ]
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 7: Enable user consent to apps, subject to app consent policy 

#### Request

Here's an example of the request that allows user consent to apps, subject to the built-in [app consent policy](/azure/active-directory/manage-apps/manage-app-consent-policies) `microsoft-user-default-low`, which allows delegated permissions classified "low", for client apps from verified publishers or registered in the same tenant.

<!-- {
  "blockType": "request",
  "name": "update_authorizationpolicy_permissiongrantpolicyidsassignedtodefaultuserrole"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/authorizationPolicy/authorizationPolicy

{
   "permissionGrantPolicyIdsAssignedToDefaultUserRole":[
      "managePermissionGrantsForSelf.microsoft-user-default-low"
   ]
}
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
