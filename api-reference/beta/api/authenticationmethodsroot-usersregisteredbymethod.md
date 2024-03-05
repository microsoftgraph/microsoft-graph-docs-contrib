---
title: "authenticationMethodsRoot: usersRegisteredByMethod"
description: "Get the number of users registered for each authentication method."
author: "egreenberg14"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# authenticationMethodsRoot: usersRegisteredByMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the number of users registered for each authentication method.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethodsroot_usersregisteredbymethod" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-usersregisteredbymethod-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/usersRegisteredByMethod
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

If successful, this function returns a `200 OK` response code and a [userRegistrationMethodSummary](../resources/userregistrationmethodsummary.md) in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsroot_usersregisteredbymethod"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/usersRegisteredByMethod(includedUserTypes='all',includedUserRoles='all')
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/authenticationmethodsroot-usersregisteredbymethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationmethodsroot-usersregisteredbymethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userRegistrationFeatureSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userRegistrationMethodSummary",
  "userTypes": "all",
  "userRoles": "all",
  "userRegistrationMethodCounts": [
    {
      "authenticationMethod": "password",
      "userCount": 12209
    },
    {
      "authenticationMethod": "windowsHelloForBusiness",
      "userCount": 223
    },
    {
      "authenticationMethod": "mobilePhone",
      "userCount": 4234
    }
  ]
}
```
