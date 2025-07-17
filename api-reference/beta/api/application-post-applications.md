---
title: "Create application"
description: "Create a new application."
author: "sureshja"
ms.localizationpriority: high
doc_type: apiPageType
ms.subservice: "entra-applications"
ms.date: 05/14/2024
---

# Create application

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [application](../resources/application.md) object.

> [!IMPORTANT]
>
> Do not share application client IDs (**appId**) in API documentation or code samples.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "application_post_applications" } -->
[!INCLUDE [permissions-table](../includes/permissions/application-post-applications-permissions.md)]

[!INCLUDE [rbac-application-apis-write](../includes/rbac-for-apis/rbac-application-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications
```

## Request headers
| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body
In the request body, supply a JSON representation of [application](../resources/application.md) object. The request body must contain  **displayName**, which is a required property.

## Response

If successful, this method returns `201 Created` response code and an [application](../resources/application.md) object in the response body.

## Examples

### Example 1: Create an application with the default settings

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_application_from_applications"
}-->
```http
POST https://graph.microsoft.com/beta/applications
Content-type: application/json

{
  "displayName": "Display name"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-application-from-applications-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-application-from-applications-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-application-from-applications-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-application-from-applications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-application-from-applications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-application-from-applications-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-application-from-applications-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-application-from-applications-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/$entity",
    "id": "03ef14b0-ca33-4840-8f4f-d6e91916010e",
    "deletedDateTime": null,
    "isFallbackPublicClient": null,
    "appId": "631a96bc-a705-4eda-9f99-fdaf9f54f6a2",
    "applicationTemplateId": null,
    "identifierUris": [],
    "createdDateTime": "2019-09-17T19:10:35.2742618Z",
    "displayName": "Display name",
    "isDeviceOnlyAuthSupported": null,
    "groupMembershipClaims": null,
    "optionalClaims": null,
    "addIns": [],
    "publisherDomain": "contoso.com",
    "samlMetadataUrl": "https://graph.microsoft.com/2h5hjaj542de/app",
    "signInAudience": "AzureADandPersonalMicrosoftAccount",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "api": {
        "requestedAccessTokenVersion": 2,
        "acceptMappedClaims": null,
        "knownClientApplications": [],
        "oauth2PermissionScopes": [],
        "preAuthorizedApplications": []
    },
    "appRoles": [],
    "publicClient": {
        "redirectUris": []
    },
    "info": {
        "termsOfServiceUrl": null,
        "supportUrl": null,
        "privacyStatementUrl": null,
        "marketingUrl": null,
        "logoUrl": null
    },
    "keyCredentials": [],
    "parentalControlSettings": {
        "countriesBlockedForMinors": [],
        "legalAgeGroupRule": "Allow"
    },
    "passwordCredentials": [],
    "requiredResourceAccess": [],
    "uniqueName": null,
    "web": {
        "redirectUris": [],
        "homePageUrl": null,
        "logoutUrl": null,
        "implicitGrantSettings": {
            "enableIdTokenIssuance": false,
            "enableAccessTokenIssuance": false
        }
    },
    "windows" : null
}
```

### Example 2: Create a new application and add a password secret

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_application_with_passwordcredentials"
}-->
```http
POST https://graph.microsoft.com/beta/applications
Content-type: application/json

{
  "displayName": "MyAppName",
  "passwordCredentials": [
    {
      "displayName": "Password name"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-application-with-passwordcredentials-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-application-with-passwordcredentials-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-application-with-passwordcredentials-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-application-with-passwordcredentials-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-application-with-passwordcredentials-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-application-with-passwordcredentials-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-application-with-passwordcredentials-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-application-with-passwordcredentials-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The **secretText** property in the response object contains the strong passwords or secret generated by Microsoft Entra ID and is 16-64 characters in length. There is no way to retrieve this password in the future.

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordCredential"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/$entity",
    "id": "83ab4737-da9d-4084-86f2-f8fbec220647",
    "deletedDateTime": null,
    "appId": "9519e58c-bd06-4120-a7fd-2220d4de8409",
    "applicationTemplateId": null,
    "disabledByMicrosoftStatus": null,
    "createdDateTime": "2024-04-01T19:10:02.6626202Z",
    "displayName": "MyAppName",
    "description": null,
    "keyCredentials": [],
    "parentalControlSettings": {
        "countriesBlockedForMinors": [],
        "legalAgeGroupRule": "Allow"
    },
    "passwordCredentials": [
        {
            "customKeyIdentifier": null,
            "displayName": "Password name",
            "endDateTime": "2026-04-01T19:10:02.6576213Z",
            "hint": "puE",
            "keyId": "09a0c91a-1bc3-4eaf-a945-c88c041fad6c",
            "secretText": "1234567890abcdefghijklmnopqrstuvwxyzabcd",
            "startDateTime": "2024-04-01T19:10:02.6576213Z"
        }
    ],
    "publicClient": {
        "redirectUris": []
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create application",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



