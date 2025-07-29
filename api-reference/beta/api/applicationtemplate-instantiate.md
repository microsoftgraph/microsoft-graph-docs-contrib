---
title: "applicationTemplate: instantiate"
description: "Add an instance of an application from the Microsoft Entra application gallery into your directory."
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 10/25/2024
---

# applicationTemplate: instantiate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an instance of an application from the [Microsoft Entra application gallery](../resources/applicationtemplate.md) into your directory.

For [non-gallery apps](/entra/identity/enterprise-apps/add-application-portal), use an application template with one of the following IDs to configure different single sign-on (SSO) modes like SAML SSO and password-based SSO.

- Global service: `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`
- US government: `4602d0b4-76bb-404b-bca9-2652e1a39c6d`
- China operated by 21Vianet: `5a532e38-1581-4918-9658-008dc27c1d68`

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "applicationtemplate_instantiate" } -->
[!INCLUDE [permissions-table](../includes/permissions/applicationtemplate-instantiate-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applicationTemplates/{applicationTemplate-id}/instantiate
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Custom name of the application|
|serviceManagementReference|String|The service tree ID for this service. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a new [applicationServicePrincipal](../resources/applicationserviceprincipal.md) object in the response body.

## Examples

The following example shows how to call this API.

### Request

The following example shows a request. The request URL specifies `8adf8e6e-67b2-4cf2-a259-e3dc5476c621` as the application template ID, which means that the request is instantiating a non-gallery app.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applicationtemplate_instantiate"
}-->

```http
POST https://graph.microsoft.com/beta/applicationTemplates/8adf8e6e-67b2-4cf2-a259-e3dc5476c621/instantiate
Content-type: application/json

{
    "displayName": "testProperties"
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/applicationtemplate-instantiate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.applicationServicePrincipal",
    "application": {
        "objectId": "428fbcb1-35bc-471d-95f2-6cc339357cb5",
        "appId": "23a223ba-bb90-4949-8232-1bf479189e9b",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "displayName": "testProperties",
        "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
        "identifierUris": [],
        "publicClient": null,
        "replyUrls": [],
        "logoutUrl": null,
        "samlMetadataUrl": null,
        "errorUrl": null,
        "groupMembershipClaims": null,
        "availableToOtherTenants": false
    },
    "servicePrincipal": {
        "objectId": "7b358fa1-7d10-4a57-bd96-b7e63c2f9be5",
        "deletionTimestamp": null,
        "accountEnabled": true,
        "appId": "23a223ba-bb90-4949-8232-1bf479189e9b",
        "appDisplayName": "testProperties",
        "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
        "appOwnerTenantId": "29a4f813-9274-4e1b-858d-0afa98ae66d4",
        "appRoleAssignmentRequired": true,
        "displayName": "testProperties",
        "errorUrl": null,
        "loginUrl": null,
        "logoutUrl": null,
        "homepage": "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z",
        "samlMetadataUrl": null,
        "microsoftFirstParty": null,
        "publisherName": "Contoso",
        "preferredSingleSignOnMode": null,
        "preferredTokenSigningKeyThumbprint": null,
        "preferredTokenSigningKeyEndDateTime": null,
        "replyUrls": [],
        "servicePrincipalNames": [
            "23a223ba-bb90-4949-8232-1bf479189e9b"
        ],
        "tags": [
            "WindowsAzureActiveDirectoryIntegratedApp",
            "WindowsAzureActiveDirectoryCustomSingleSignOnApplication"
        ],
        "notificationEmailAddresses": [],
        "samlSingleSignOnSettings": null,
        "keyCredentials": [],
        "passwordCredentials": []
    }
}
```

## Related content

[Quickstart: Add an enterprise application from the Microsoft Entra gallery](/entra/identity/enterprise-apps/add-application-portal)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate: instantiate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
