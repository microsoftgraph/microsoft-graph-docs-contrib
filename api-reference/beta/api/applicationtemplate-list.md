---
title: "List applicationTemplates"
description: "Retrieve a list of application template objects."
ms.localizationpriority: medium
author: "HildaK-pm"
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

### Example 1: List all application templates

This example shows how to retrieve all application templates.

#### Request

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
  "value": [
    {
      "id": "01303a13-8322-4e06-bee5-80d612907131",
      "displayName": "Google Cloud / G Suite Connector by Microsoft",
      "publisher": "Microsoft",
      "categories": ["collaboration", "productivity", "topApps"],
      "logoUrl": "https://galleryapplogos1.azureedge.net/app-logo/googleapps_CF07EA93_215.png"
    }
  ]
}
```

### Example 2: Get a single application template by ID

This example shows how to retrieve a specific application template using its ID.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplates_filter_category"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/60fda14e-f0a4-4fbb-b80a-47f03ffcac6e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplates-filter-category-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplates-filter-category-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplates-filter-category-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplates-filter-category-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplates-filter-category-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplates-filter-category-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplates-filter-category-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates('<guid>')?$select=categories,configurationUris",
    "id": "60fda14e-f0a4-4fbb-b80a-47f03ffcac6e",
    "displayName": "Zillah",
    "homePageUrl": "https://manage.windowsazure.com/",
    "supportedSingleSignOnModes": [
        "external"
    ],
    "supportedProvisioningTypes": [
        "sync"
    ],
    "logoUrl": "https://galleryapplogos1.azureedge.net/app-logo/Zillah_400763AD_215.png",
    "categories": [
        "Tools"
    ],
    "publisher": "Microsoft",
    "description": "Microsoft Azure is a cloud computing platform operated by Microsoft for application management via Microsoft-managed data centers.",
    "endpoints": [
        "portal.azure.net",
        "portal.azure.com",
        "portal.azure.us",
        "portal.azure.cn",
        "azure-test.net",
        "onecloud.azure-test.net",
        "bastion.azure.com",
        "management.azure.com",
        "secure.aadcdn.microsoftonline-p.com",
        "westeurope.cloudapp.azure.com",
        "https://manage.windowsazure.com/"
    ],
    "lastModifiedDateTime": "2025-08-01T21:05:19.522513Z",
    "supportedClaimConfiguration": null,
    "informationalUrls": {
        "singleSignOnDocumentationUrl": "https://go.microsoft.com/fwlink/?linkid=857647",
        "appSignUpUrl": null
    },
    "configurationUris": []
}

### Example 3: Instantiate an application template

This example shows how to create a new application instance from a template.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "instantiate_applicationtemplate"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/applicationTemplates/60fda14e-f0a4-4fbb-b80a-47f03ffcac6e/instantiate
Content-Type: application/json

{
    "displayName": "Zillah Dev Instance"
}
```

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "application": {
        "id": "f5bd8c67-1b95-4ef5-9e09-12c9478356f8",
        "appId": "8f7c8c97-0d89-4b5e-94fd-3383869ca2c2",
        "displayName": "Zillah Dev Instance"
    },
    "servicePrincipal": {
        "id": "df35a17c-21bc-4524-8759-c9c6d89c112a",
        "appId": "8f7c8c97-0d89-4b5e-94fd-3383869ca2c2",
        "displayName": "Zillah Dev Instance"
    }
}

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
