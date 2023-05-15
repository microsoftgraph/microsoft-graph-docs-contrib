---
title: "Update federatedIdentityCredential"
description: "Update the properties of a federatedIdentityCredential object."
author: "shahzad-khalid"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All    |
|Delegated (personal Microsoft account) |  Application.ReadWrite.All |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |


## HTTP request

You can address the application using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in the Azure portal.

You can also address the federated identity credential with either its **id** or **name**.
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialId}

PATCH /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialName}

PATCH /applications(appId='{appId}')/federatedIdentityCredentials/{federatedIdentityCredentialId}

PATCH /applications(appId='{appId}')/federatedIdentityCredentials/{federatedIdentityCredentialName}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply *only* the values for properties that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values.

The following table specifies the properties that can be updated.

|Property|Type|Description|
|:---|:---|:---|
|audiences|String collection|The audience that can appear in the issued token. For Azure AD, set its value to `api://AzureADTokenExchange`. This field can only accept a single value and has a limit of 600 characters. |
|description|String|A user-provided description of what the federatedIdentityCredential is used for. It has a limit of 600 characters. |
|issuer|String|The URL of the incoming trusted issuer (Secure Token Service). Matches the issuer claim of an access token. For example, with the Customer Managed Keys scenario, Azure AD is the issuer and a valid value would be `https://login.microsoftonline.com/{tenantid}/v2.0`. The combination of the values of **issuer** and **subject** must be unique on the app. It has a limit of 600 characters.|
|subject|String|<li>For Azure AD issuer, the `objectId` of the servicePrincipal (can represent a managed identity) that can impersonate the app. The object associated with this GUID needs to exist in the tenant.</li><li>For all other issuers, a string with no additional validation</ul><br><br>The combination of the values of **issuer** and **subject** must be unique on the app.It has a limit of 600 characters.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_federatedidentitycredential"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/15be77d1-1940-43fe-8aae-94a78e078da0
Content-Type: application/json

{
    "name": "testing02",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "Updated description",
    "audiences": [
        "api://AzureADTokenExchange"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-federatedidentitycredential-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-federatedidentitycredential-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-federatedidentitycredential-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-federatedidentitycredential-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-federatedidentitycredential-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-federatedidentitycredential-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content

```

