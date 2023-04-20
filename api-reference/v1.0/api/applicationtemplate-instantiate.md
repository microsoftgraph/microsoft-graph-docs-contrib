---
title: 'applicationTemplate: instantiate'
description: 'Add an instance of an application from the Azure AD application gallery into your directory.'
ms.localizationpriority: medium
author: 'luleonpla'
ms.prod: 'applications'
doc_type: apiPageType
---

# applicationTemplate: instantiate

Namespace: microsoft.graph

Add an instance of an application from the Azure AD application gallery into your directory. You can also use this API to instantiate [non-gallery apps](/azure/active-directory/manage-apps/add-non-gallery-app). Use the following ID for the **applicationTemplate** object: `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)        |
| :------------------------------------- | :------------------------------------------------- |
| Delegated (work or school account)     | Application.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                     |
| Application                            | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applicationTemplates/{applicationTemplate-id}/instantiate
```

To instantiate non-gallery apps, use the `8adf8e6e-67b2-4cf2-a259-e3dc5476c621` for the `{applicationTemplate-id}`.

## Request headers

| Name          | Description   |
| :------------ | :------------ |
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter   | Type   | Description                    |
| :---------- | :----- | :----------------------------- |
| displayName | String | Custom name of the application |

## Response

If successful, this method returns a `201 Created` response code and a new [applicationServicePrincipal](../resources/applicationserviceprincipal.md) object in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applicationtemplate_instantiate"
}-->

```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/229946b9-a9fb-45b8-9531-efa47453ac9e/instantiate
Content-type: application/json

{
    "displayName": "Azure AD SAML Toolkit"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applicationtemplate-instantiate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/applicationtemplate-instantiate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applicationtemplate-instantiate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applicationtemplate-instantiate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/applicationtemplate-instantiate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/applicationtemplate-instantiate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.applicationServicePrincipal",
    "application": {
        "id": "20845737-a145-446f-aa3c-77d432903957",
        "appId": "3c653ec4-4e4c-4820-8127-49e3889cad99",
        "applicationTemplateId": "229946b9-a9fb-45b8-9531-efa47453ac9e",
        "createdDateTime": "2022-04-25T16:48:24Z",
        "deletedDateTime": null,
        "displayName": "Azure AD SAML Toolkit",
        "groupMembershipClaims": null,
        "identifierUris": [],
        "isFallbackPublicClient": false,
        "signInAudience": "AzureADMyOrg",
        "tags": [],
        "tokenEncryptionKeyId": null,
        "defaultRedirectUri": null,
        "optionalClaims": null,
        "addIns": [],
        "api": {
            "acceptMappedClaims": null,
            "knownClientApplications": [],
            "requestedAccessTokenVersion": null,
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allow the application to access Azure AD SAML Toolkit on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Access Azure AD SAML Toolkit",
                    "id": "00e7ef81-4deb-41d7-9ee3-90d4eba1e991",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allow the application to access Azure AD SAML Toolkit on your behalf.",
                    "userConsentDisplayName": "Access Azure AD SAML Toolkit",
                    "value": "user_impersonation"
                }
            ],
            "preAuthorizedApplications": []
        },
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "8b292bda-39b6-4b77-849e-887565235bb0",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "parentalControlSettings": {
            "countriesBlockedForMinors": [],
            "legalAgeGroupRule": "Allow"
        },
        "passwordCredentials": [],
        "publicClient": {
            "redirectUris": []
        },
        "requiredResourceAccess": [],
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "web": {
            "homePageUrl": "https://samltoolkit.azurewebsites.net/SAML/Consume?metadata=samltoolkit|ISV9.2|primary|z",
            "redirectUris": [
                "https://samltoolkit.azurewebsites.net/SAML/Consume"
            ]
        }
    },
    "servicePrincipal": {
        "id": "912729dd-97ae-4ceb-ade4-07bed3046486",
        "deletedDateTime": null,
        "accountEnabled": true,
        "appId": "3c653ec4-4e4c-4820-8127-49e3889cad99",
        "applicationTemplateId": "229946b9-a9fb-45b8-9531-efa47453ac9e",
        "appDisplayName": "Azure AD SAML Toolkit",
        "alternativeNames": [],
        "appOwnerOrganizationId": "29a4f813-9274-4e1b-858d-0afa98ae66d4",
        "displayName": "Azure AD SAML Toolkit",
        "appRoleAssignmentRequired": true,
        "loginUrl": null,
        "logoutUrl": null,
        "homepage": "https://samltoolkit.azurewebsites.net/SAML/Consume?metadata=samltoolkit|ISV9.2|primary|z",
        "notificationEmailAddresses": [],
        "preferredSingleSignOnMode": null,
        "preferredTokenSigningKeyThumbprint": null,
        "replyUrls": [
            "https://samltoolkit.azurewebsites.net/SAML/Consume"
        ],
        "servicePrincipalNames": [
            "3c653ec4-4e4c-4820-8127-49e3889cad99"
        ],
        "servicePrincipalType": "Application",
        "tags": [
            "WindowsAzureActiveDirectoryIntegratedApp"
        ],
        "tokenEncryptionKeyId": null,
        "samlSingleSignOnSettings": null,
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "addIns": [],
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "8b292bda-39b6-4b77-849e-887565235bb0",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "oauth2PermissionScopes": [
            {
                "adminConsentDescription": "Allow the application to access Azure AD SAML Toolkit on behalf of the signed-in user.",
                "adminConsentDisplayName": "Access Azure AD SAML Toolkit",
                "id": "00e7ef81-4deb-41d7-9ee3-90d4eba1e991",
                "isEnabled": true,
                "type": "User",
                "userConsentDescription": "Allow the application to access Azure AD SAML Toolkit on your behalf.",
                "userConsentDisplayName": "Access Azure AD SAML Toolkit",
                "value": "user_impersonation"
            }
        ],
        "passwordCredentials": []
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate: instantiate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
