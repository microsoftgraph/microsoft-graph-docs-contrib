---
title: "Get applicationTemplate"
description: "Retrieve the properties and relationships of applicationtemplate object."
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 08/02/2024
---

# Get applicationTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of an [applicationTemplate](../resources/applicationtemplate.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "applicationtemplate-get-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/applicationtemplate-get-permissions.md)]

Additional permissions aren't required to call this API, as long as your application has a valid access token to call Microsoft Graph.

## HTTP request

<!-- { "blockType": "ignored" } -->

``` http
GET /applicationTemplates/{applicationTemplate-id}
```

## Optional query parameters

You can use a `$select` query parameter to specify only the properties you need for best performance. The **id** property is always returned. 

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [applicationTemplate](../resources/applicationtemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplate"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/006a06ef-9160-42cd-88bf-17a7588fc844
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-applicationtemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationTemplate"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates/$entity",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates('<guid>')?$select=appCategory,categories",
  "id": "006a06ef-9160-42cd-88bf-17a7588fc844",
  "displayName": "LinkedIn Lookup",
  "homePageUrl": "www.linkedin.com",
  "supportedSingleSignOnModes": [
    "SAML",
    "Password"
  ],
  "supportedProvisioningTypes": [],
  "logoUrl": "https://images.microsoft.com",
  "categories": [
    "collaboration",
    "social"
  ],
  "publisher": "LinkedIn",
  "description": "LinkedIn Lookup is the easiest way to find coworkers and teams at your company. Lookup is a new people search tool that combines employees' LinkedIn profile information and Active Directory information, allowing you to quickly find and contact your coworkers, on desktop or mobile. Requires an existing Lookup company subscription.",
  "supportedClaimConfiguration": {
    "requiredClaims": [
      {
        "id": "first_name",
        "namespace": "",
        "source": "user",
        "attribute": "firstname"
      },
      {
        "id": "last_name",
        "namespace": "",
        "source": "user",
        "attribute": "surname"
      },
      {
        "id": "email_address",
        "namespace": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/",
        "source": "user",
        "attribute": "mail"
      }
    ],
    "groupMembershipClaims": "securityGroup",
    "nameIdPolicyFormat": "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  },
  "informationalUrls": {
    "singleSignOnDocumentationUrl": "https://go.microsoft.com/fwlink/?linkid=847714",
    "provisioningDocumentationUrl": null,
    "appSignUpUrl": null
  },
  "configurationUris": [
    {
      "usage": "redirectUri",
      "examples": [
        "https://www.linkedin.com/checkpoint/enterprise/<SUBDOMAIN>"
      ],
      "values": [
        "https://www.linkedin.com/checkpoint/enterprise/*"
      ],
      "isRequired": false,
      "appliesToSingleSignOnMode": "saml"
    },
    {
      "usage": "identifierUri",
      "examples": null,
      "values": [
        "linkedinlookup/primary",
        "https://www.linkedin.com/lookup/*"
      ],
      "isRequired": true,
      "appliesToSingleSignOnMode": "saml"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get applicationTemplate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



