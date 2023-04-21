---
title: "Get referenceDefinition"
description: "Read the properties and relationships of a referenceDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get referenceDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [referenceDefinition](../resources/industrydata-referencedefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-ReferenceDefinition.Read.All   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-ReferenceDefinition.Read.All   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/referenceDefinitions/{referenceDefinitionId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_referencedefinition",
  "sampleKeys": ["RefAcademicSubject-01"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/referenceDefinitions/RefAcademicSubject-01
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-referencedefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-referencedefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-referencedefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-referencedefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-referencedefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-referencedefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.referenceDefinition"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "code": "01",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "id": "RefAcademicSubject-01",
  "isDisabled": false,
  "lastModifiedDateTime": "0001-01-01T00:00:00Z",
  "referenceType": "RefAcademicSubject",
  "sortIndex": 10,
  "source": "microsoft.com"
}
```
