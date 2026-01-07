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

Retrieve the properties of an [applicationTemplate](../resources/applicationtemplate.md) object. Details about optional risk properties such as **riskScore** and **riskFactors** are available with either the Microsoft Entra Suite or Microsoft Entra Internet Access license.

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

You can use a `$select` query parameter to specify only the properties you need for best performance. The `riskFactors` and `riskScore` properties are not returned by default. You must use `$select` to include them. See [#example-2-get-application-template-with-optional-properties](Example 2).

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

### Example 1: Get application template

#### Request

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

#### Response

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
```

### Example 2: Get application template with optional properties

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationtemplate_with_optional"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/006a06ef-9160-42cd-88bf-17a7588fc844?$select=id,displayName,riskScore,riskFactors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationtemplate-with-optional-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationtemplate-with-optional-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationtemplate-with-optional-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationtemplate-with-optional-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationtemplate-with-optional-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationtemplate-with-optional-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationtemplate-with-optional-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates(id,displayName,riskScore,riskFactors)/$entity",
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
