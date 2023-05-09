---
title: "List teamTemplates"
description: "Get a list of the teamTemplate objects and their properties for a tenant."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamTemplates
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [teamTemplate](../resources/teamtemplate.md) objects that are available for a tenant. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamTemplates.Read|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamTemplates.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/teamTemplates
```

## Optional query parameters
This method supports the `$expand`, `$filter`, and `$skipToken` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamTemplate](../resources/teamtemplate.md) objects. 

> [!Note]
> Currently, this API only returns the **id** property of a [teamTemplate](../resources/teamtemplate.md). To get the [teamTemplateDefinition](../resources/teamtemplatedefinition.md), use the OData query parameter `$expand=definitions`.

## Examples

### Example 1: Get a list of team templates

#### Request
The following is an example of a request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamtemplatedefinition_for_tenant"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork/teamTemplates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamtemplatedefinition-for-tenant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamtemplatedefinition-for-tenant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamtemplatedefinition-for-tenant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamtemplatedefinition-for-tenant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamtemplatedefinition-for-tenant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-teamtemplatedefinition-for-tenant-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamtemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "com.microsoft.teams.template.ManageAProject"
        },
        {
            "id": "com.microsoft.teams.template.ManageAnEvent"
        }
    ]
}
```

### Example 2: Use $extend and $filter to get templateDefinitions for en-US locale

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamtemplatedefinition_extend_filter"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork/teamTemplates?$expand=definitions&filter=definitions/any(a:a/languageTag eq 'en-US')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamtemplatedefinition-extend-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamtemplatedefinition-extend-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamtemplatedefinition-extend-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamtemplatedefinition-extend-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamtemplatedefinition-extend-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-teamtemplatedefinition-extend-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamtemplatedefinition)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "com.microsoft.teams.template.ManageAProject",
            "definitions": [
                {
                    "id": "Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==",
                    "parentTemplateId": "com.microsoft.teams.template.ManageAProject",
                    "displayName": "Manage a Project",
                    "languageTag": "en-US",
                    "audience": "public",
                    "description": "Manage tasks, share documents, conduct project meetings and document risks and decisions with this template for general project management.",
                    "shortDescription": "Coordinate your project.",
                    "lastModifiedDateTime": "0001-01-01T00:00:00Z",
                    "publisherName": "Microsoft",
                    "categories": [
                        "General"
                    ],
                    "lastModifiedBy": null
                }
            ]
        },
        {
            "id": "com.microsoft.teams.template.ManageAnEvent",
            "definitions": [
                {
                    "id": "Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBbkV2ZW50IyNQdWJsaWMjI2VuLVVT",
                    "parentTemplateId": "com.microsoft.teams.template.ManageAnEvent",
                    "displayName": "Manage an Event",
                    "languageTag": "en-US",
                    "audience": "public",
                    "description": "Manage tasks, documents, and collaborate on everything you need to deliver a compelling event. Invite guest users to have a secure collaboration inside and outside of your company.",
                    "shortDescription": "Improve your event management and collaboration.",
                    "lastModifiedDateTime": "0001-01-01T00:00:00Z",
                    "publisherName": "Microsoft",
                    "categories": [
                        "General"
                    ],
                    "lastModifiedBy": null
                }
            ]
        }
    ]
}
```
