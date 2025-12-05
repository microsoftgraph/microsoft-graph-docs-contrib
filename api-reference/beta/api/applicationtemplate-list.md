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

Retrieve a list of [applicationTemplate](../resources/applicationtemplate.md) objects from the Microsoft Entra application gallery. Details about optional risk properties such as **riskScore** and **riskFactors** are available with either the Microsoft Entra Suite or Microsoft Entra Internet Access license.

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

- You can use `$filter`, `$orderby`, `$top,` and `$skip` query parameters in any GET request.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| `Prefer: odata.maxpagesize={int-value}`| Optional. `int-value` is a number up to 2,800 when query parameters are not applied; or up to 200 when query parameters are applied.|

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates?$select=categories,configurationUris",
    "value": [
        {
            "id": "de92ca39-7b85-4b4c-90d8-2885eff5100b",
            "displayName": "LinkedIn Lookup",
            "homePageUrl": "www.linkedin.com",
            "supportedSingleSignOnModes": [
                "saml",
                "external"
            ],
            "supportedProvisioningTypes": [
                "sync"
            ],
            "logoUrl": "https://galleryapplogos1.azureedge.net/app-logo/linkedinlookup_B8D516A4_215.png",
            "categories": [
                "collaboration",
                "social"
            ],
            "publisher": "LinkedIn",
            "description": "LinkedIn Lookup is the easiest way to find coworkers and teams at your company. Lookup is a new people search tool that combines employees' LinkedIn profile information and Active Directory information, allowing you to quickly find and contact your coworkers, on desktop or mobile. Requires an existing Lookup company subscription.",
            "endpoints": [
                "linkedin.com",
                "licdn.com",
                "platform-alib.linkedin.cn",
                "platform-akam.linkedin.cn",
                "platform-qtil.linkedin.cn",
                "www.linkedin.com"
            ],
            "lastModifiedDateTime": "2025-08-01T21:05:17.943549Z",
            "informationalUrls": {
                "singleSignOnDocumentationUrl": "https://go.microsoft.com/fwlink/?linkid=847714",
                "appSignUpUrl": null
            },
            "supportedClaimConfiguration": {
                "nameIdPolicyFormat": "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
            },
            "configurationUris": [
                {
                    "usage": "identifierUri",
                    "appliesToSingleSignOnMode": "saml",
                    "values": [
                        "https://www.linkedin.com/lookup/*"
                    ],
                    "examples": [
                        "https://www.linkedin.com/lookup/EXAMPLE"
                    ],
                    "isRequired": true
                },
                {
                    "usage": "redirectUri",
                    "appliesToSingleSignOnMode": "saml",
                    "values": [
                        "https://www.linkedin.com/checkpoint/enterprise/*"
                    ],
                    "examples": [
                        "https://www.linkedin.com/checkpoint/enterprise/*"
                    ],
                    "isRequired": true
                }
            ]
        }
    ]
}
```

### Example 2: List all application templates with optional properties

This example shows how to retrieve all application templates with optional properties

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplates_with_optional"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/?$select=id,displayName,riskScore,riskFactors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplates-with-optional-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplates-with-optional-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplates-with-optional-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplates-with-optional-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplates-with-optional-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplates-with-optional-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplates-with-optional-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates?$select=categories,configurationUris",
    "value": [
        {
            "id": "de92ca39-7b85-4b4c-90d8-2885eff5100b",
            "displayName": "LinkedIn Lookup",
            "riskScore": {
                "total": 9.910557,
                "security": 9.95,
                "provider": 9.611832,
                "compliance": 9.931034,
                "legal": 10.0
            },
            "riskFactors": {
                "general": {
                    "hasDisasterRecoveryPlan": true
                    // ... omitted for brewity
                },
                "security": {
                    "hasMFA": true
                    // ... omitted for brewity
                },
                "compliance": {
                    "cobit": true
                    // ... omitted for brewity
                },
                "legal": {
                    "hasDmca": null
                    // ... omitted for brewity
                }
            }
        }
    ]
}
```

### Example 3: List application templates with filtering and ordering
This example shows how to get top 2 application templates sorted by total risk score which are classified in "contentSharing" category

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplates_with_filter_and_order"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/?$select=id,displayName,riskScore,categories&$filter=categories/any(c: c eq 'contentSharing')&$top=2&$orderBy=riskScore/total desc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplates-with-filter-and-order-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplates-with-filter-and-order-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplates-with-filter-and-order-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplates-with-filter-and-order-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplates-with-filter-and-order-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplates-with-filter-and-order-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplates-with-filter-and-order-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates",
    "value": [
        {
            "id": "2af39c45-8bb3-5369-9341-696181ebfa55",
            "displayName": "Contoso network",
            "categories": [
                "contentSharing"
            ],
            "riskScore": {
                "total": 9.610546,
                "security": 9.833333,
                "provider": 9.475291,
                "compliance": 9.923077,
                "legal": 9.142858
            }
        },
        {
            "id": "e0e5def8-f27e-5445-93f3-02ea8733a811",
            "displayName": "Fourth Coffee",
            "categories": [
                "contentSharing"
            ],
            "riskScore": {
                "total": 8.562663,
                "security": 8.266666,
                "provider": 8.833883,
                "compliance": 8.142858,
                "legal": 9.142858
            }
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
