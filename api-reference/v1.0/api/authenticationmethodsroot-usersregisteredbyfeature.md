---
title: "authenticationMethodsRoot: usersRegisteredByFeature"
description: "Get the number of users capable of multi-factor authentication, self-service password reset, and passwordless authentication."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# authenticationMethodsRoot: usersRegisteredByFeature

Namespace: microsoft.graph

Get the number of users capable of multi-factor authentication, self-service password reset, and passwordless authentication.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethodsroot_usersregisteredbyfeature" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-usersregisteredbyfeature-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/usersRegisteredByFeature
```

## Function parameters

The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|includedUserRoles|includedUserRoles|The role type for the user. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`.|
|includedUserTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`.|

The value `privilegedAdmin` consists of the following privileged admin roles:

* Global Administrator
* Security Administrator
* Conditional Access Administrator
* Exchange Administrator
* SharePoint Administrator
* Helpdesk Administrator
* Billing Administrator
* User Administrator
* Authentication Administrator

The value `admin` includes all Microsoft Entra admin roles.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [userRegistrationFeatureSummary](../resources/userregistrationfeaturesummary.md) in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsroot_usersregisteredbyfeature"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/authenticationmethodsroot-usersregisteredbyfeature-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationmethodsroot-usersregisteredbyfeature-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userRegistrationFeatureSummary"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureSummary",
  "totalUserCount": 23123,
  "userTypes": "all",
  "userRoles": "all",
  "userRegistrationFeatureCounts": [
    {
      "feature": "ssprRegistered",
      "userCount": 23423
    },
    {
      "feature": "ssprEnabled",
      "userCount": 4234
    },
    {
      "feature": "ssprCapable",
      "userCount": 4234
    },
    {
      "feature": "passwordlessCapable",
      "userCount": 323
    },
    {
      "feature": "mfaCapable",
      "userCount": 3345
    }
  ]
}
```
