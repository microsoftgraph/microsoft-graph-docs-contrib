---
title: "List applicationTemplates"
description: "Retrieve a list of applicationtemplate objects."
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 08/02/2024
---

# List applicationTemplates

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [applicationTemplate](../resources/applicationtemplate.md) objects from the Microsoft Entra application gallery.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "applicationtemplate-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/applicationtemplate-list-permissions.md)]

Additional permissions aren't required to call this API, as long as your application has a valid access token to call Microsoft Graph.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /applicationTemplates
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. 

- You can use the `$filter` parameter in a limited way. You can only filter by **displayName** or **categories**. For example,  `$filter=contains(displayName, 'salesf')` or `$filter=categories/any(c:contains(c, 'myCategory'))`.
- You can use `$orderby`, `$top,` and `$skip` query parameters in any GET request.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [applicationTemplate](../resources/applicationtemplate.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplates"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplates-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplates-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplates-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplates-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplates-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplates-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplates-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.applicationTemplate)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates?$select=appCategory,categories",
  "value": [
    {
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
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List applicationTemplates",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
