---
title: "authenticationMethodsRoot: usersRegisteredByFeature"
description: "Get the number of users capable of multi-factor authentication, self-service password reset, and passwordless authentication."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# authenticationMethodsRoot: usersRegisteredByFeature

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the number of users capable of multi-factor authentication, self-service password reset, and passwordless authentication.

## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AuditLog.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

To access the API, [one of the following roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles) is required:

* Reports Reader
* Security Reader
* Security Administrator
* Global Reader
* Global Administrator

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

The value `admin` includes all Azure Active Director admin roles.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [userRegistrationFeatureSummary](../resources/userregistrationfeaturesummary.md) in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsroot_usersregisteredbyfeature"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/authenticationmethodsroot-usersregisteredbyfeature-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationmethodsroot-usersregisteredbyfeature-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/authenticationmethodsroot-usersregisteredbyfeature-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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
