---
title: "List sourceSystemDefinitions"
description: "Get a list of the sourceSystemDefinition objects and their properties."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# List sourceSystemDefinitions

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                 |
| :------------------------------------- | :-------------------------------------------------------------------------- |
| Delegated (work or school account)     | IndustryData-SourceSystem.Read.All, IndustryData-SourceSystem.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                              |
| Application                            | IndustryData-SourceSystem.Read.All, IndustryData-SourceSystem.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/sourceSystems
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sourcesystemdefinition"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/sourceSystems
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-sourcesystemdefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-sourcesystemdefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-sourcesystemdefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-sourcesystemdefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-sourcesystemdefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-sourcesystemdefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.sourceSystemDefinition)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "displayName": "Rostering Source",
      "id": "0190210e-8827-4747-6f2b-08dacc885e72",
      "userMatchingSettings": [
        {
          "matchTarget": {
            "code": "userPrincipalName"
          },
          "priorityOrder": 0,
          "sourceIdentifier": {
            "code": "username"
          }
        },
        {
          "matchTarget": {
            "code": "userPrincipalName"
          },
          "priorityOrder": 1,
          "sourceIdentifier": {
            "code": "username"
          }
        }
      ],
      "vendor": null
    },
    {
      "displayName": "Admin Source",
      "id": "019845e8-47af-4b91-6ab8-08dad8f43b1a",
      "userMatchingSettings": [
        {
          "matchTarget": {
            "code": "userPrincipalName"
          },
          "priorityOrder": 0,
          "sourceIdentifier": {
            "code": "username"
          }
        },
        {
          "matchTarget": {
            "code": "userPrincipalName"
          },
          "priorityOrder": 1,
          "sourceIdentifier": {
            "code": "username"
          }
        }
      ],
      "vendor": null
    }
  ]
}
```
