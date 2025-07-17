---
title: "List appliesTo"
description: "Get a list of directoryObject objects that a homeRealmDiscoveryPolicy object has been applied to."
ms.localizationpriority: medium
author: "nickludwig"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 07/29/2024
---

# List appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [directoryObject](../resources/directoryObject.md) objects that a [homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) object has been applied to. The homeRealmDiscoveryPolicy can only be applied to [servicePrincipal](../resources/serviceprincipal.md) resources.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/homerealmdiscoverypolicy-list-appliesto-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/homeRealmDiscoveryPolicies/{id}/appliesTo
```

## Optional query parameters

This method supports the `$select` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body. It returns a `404 Not Found` response code if the policy hasn't been applied to any directory objects.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_appliesto_2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/homeRealmDiscoveryPolicies/6c6f154f-cb39-4ff9-bf5b-62d5ad585cde/appliesTo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-appliesto-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-appliesto-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-appliesto-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-appliesto-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-appliesto-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-appliesto-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-appliesto-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-appliesto-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.servicePrincipal",
            "id": "19c308f2-e088-464d-8ccb-7137b7bab660",
            "accountEnabled": true,
            "alternativeNames": [],
            "appDisplayName": "LinkedIn",
            "appId": "c8e5820f-8e41-4b7c-8937-42777eb592a4",
            "appOwnerOrganizationId": "84841066-274d-4ec0-a5c1-276be684bdd3",
            "displayName": "LinkedIn",
            "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=linkedin|ISV9.3|primary|z",
            "servicePrincipalNames": [
                "c8e5820f-8e41-4b7c-8937-42777eb592a4",
                "http://LinkedIn/1a2d95c1-3cc7-46ad-82dd-2c768ae1b4ff"
            ],
            "servicePrincipalType": "Application",
            "signInAudience": "AzureADMyOrg",
            "tags": [
                "4d57f64e-9941-4df2-bb70-8d9a2a38ab91",
                "WindowsAzureActiveDirectoryGalleryApplicationPrimaryV1",
                "WindowsAzureActiveDirectoryIntegratedApp"
            ],
            "appRoles": [
                {
                    "allowedMemberTypes": [
                        "User"
                    ],
                    "description": "msiam_access",
                    "displayName": "msiam_access",
                    "id": "01c2bb8e-0895-42c8-b950-3ec8abc7a012",
                    "isEnabled": true,
                    "origin": "Application",
                    "value": null
                }
            ],
            "keyCredentials": [],
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allow the application to access LinkedIn on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Access LinkedIn",
                    "id": "6edde65d-3f90-4251-9df2-0329b678b368",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allow the application to access LinkedIn on your behalf.",
                    "userConsentDisplayName": "Access LinkedIn",
                    "value": "user_impersonation"
                }
            ],
            "passwordCredentials": []
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List appliesTo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

