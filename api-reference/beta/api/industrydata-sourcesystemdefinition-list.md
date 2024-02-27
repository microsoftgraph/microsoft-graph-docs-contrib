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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_sourcesystemdefinition_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-sourcesystemdefinition-list-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-sourcesystemdefinition-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-sourcesystemdefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
