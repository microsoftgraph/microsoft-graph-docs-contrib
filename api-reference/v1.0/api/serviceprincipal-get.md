---
title: "Get servicePrincipal"
description: "Retrieve the properties and relationships of servicePrincipal object."
author: "sureshja"
ms.localizationpriority: high
ms.prod: "applications"
doc_type: apiPageType
---

# Get servicePrincipal

Namespace: microsoft.graph

Retrieve the properties and relationships of a [servicePrincipal](../resources/serviceprincipal.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Application.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.Read.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Application.ReadWrite.OwnedBy, Directory.Read.All |

> [!NOTE]
> A service principal can retrieve its own application and service principal details without being granted any application permissions.
> The *Application.ReadWrite.OwnedBy* permission allows an app to call `GET /applications` and `GET /servicePrincipals` to list all applications and service principals in the tenant. This scope of access has been allowed for the permission.


## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in the Azure portal

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}
GET /servicePrincipals(appId='{appId}')
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

By default, this API doesn't return the public key value of the **key** in the **keyCredentials** property unless **keyCredentials** is specified in a `$select` query.
For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for service principals has a throttling limit of 150 requests per minute for every tenant.

## Request headers
| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Accept-Language| Language code. Optional.   |

Providing the **Accept-Language** header with a supported language code, such as `es-ES` or `de-DE`, will return localized values where available. Note that the header is not supported for [list operations](serviceprincipal-list.md).

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [servicePrincipal](../resources/serviceprincipal.md) object in the response body.

## Examples

### Example 1: Retrieve a service principal by its ID

#### Request
Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_serviceprincipal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/00063ffc-54e9-405d-b8f3-56124728e051
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-serviceprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-serviceprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-serviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-serviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-serviceprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-serviceprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "accountEnabled": true,
  "addIns": [],
  "alternativeNames": ["http://contoso/a7770d29-4321-41a6-b863-ca11d6639448"],
  "appDisplayName": "My app",
  "appId": "appId-value",
  "appOwnerOrganizationId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "appRoleAssignmentRequired":true,
  "appRoles": [],
  "disabledByMicrosoftStatus": null,
  "displayName": "My app instance in tenant",
  "endpoints": [],
  "homepage": null,
  "id": "00af5dfb-85da-4b41-a677-0c6b86dd34f8",
  "verifiedPublisher": {
            "displayName": "publisher_contoso",
            "verifiedPublisherId": "9999999",
             "addedDateTime": "2021-04-24T17:49:44Z"
    },
  "info": {
    "termsOfServiceUrl": null,
    "supportUrl": null,
    "privacyStatementUrl": null,
    "marketingUrl": null,
    "logoUrl": null
  },
  "keyCredentials": [],
  "logoutUrl": null,
  "oauth2PermissionScopes": [],
  "passwordCredentials": [],
  "publisherName": null,
  "replyUrls": [],
  "resourceSpecificApplicationPermissions": [],
  "servicePrincipalNames": [],
  "servicePrincipalType": null,
  "signInAudience": "AzureADandPersonalMicrosoftAccount",
  "tags": [],
  "tokenEncryptionKeyId": null
}
```


### Example 2: Retrieve the specific properties of a service principal

#### Request
Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_serviceprincipal_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/7408235b-7540-4850-82fe-a5f15ed019e2?$select=id,appId,displayName,appRoles,oauth2PermissionScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-serviceprincipal-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-serviceprincipal-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-serviceprincipal-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-serviceprincipal-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-serviceprincipal-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-serviceprincipal-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals(id,appId,displayName,appRoles,publishedPermissionScopes)/$entity",
    "id": "7408235b-7540-4850-82fe-a5f15ed019e2",
    "appId": "00000003-0000-0000-c000-000000000000",
    "displayName": "Microsoft Graph",
    "appRoles": [
        {
            "allowedMemberTypes": [
                "Application"
            ],
            "description": "Allows the app to read all class assignments without grades for all users without a signed-in user.",
            "displayName": "Read all class assignments without grades",
            "id": "6e0a958b-b7fc-4348-b7c4-a6ab9fd3dd0e",
            "isEnabled": true,
            "origin": "Application",
            "value": "EduAssignments.ReadBasic.All"
        }
    ],
    "oauth2PermissionScopes": [
        {
            "adminConsentDescription": "Allows the app to see your users' basic profile (e.g., name, picture, user name, email address)",
            "adminConsentDisplayName": "View users' basic profile",
            "id": "14dad69e-099b-42c9-810b-d002981feec1",
            "isEnabled": true,
            "type": "User",
            "userConsentDescription": "Allows the app to see your basic profile (e.g., name, picture, user name, email address)",
            "userConsentDisplayName": "View your basic profile",
            "value": "profile"
        }
    ]
}    
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get servicePrincipal",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
