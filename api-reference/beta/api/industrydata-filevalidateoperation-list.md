---
title: "List fileValidateOperations"
description: "Get a list of long-running file validation operations and their statuses."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# List fileValidateOperations

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of long-running [file validation operations](../resources/industrydata-filevalidateoperation.md) and their statuses.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData.ReadBasic.All                  |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData.ReadBasic.All                  |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/operations
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.fileValidateOperation](../resources/industrydata-filevalidateoperation.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_fileValidateOperation"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/operations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-filevalidateoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-filevalidateoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-filevalidateoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filevalidateoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-filevalidateoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-filevalidateoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.fileValidateOperation)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.industryData.fileValidateOperation",
      "createdDateTime": "2022-12-14T05:54:35.400029Z",
      "errors": [
        {
          "code": "RequiredFileNotFound",
          "details": [],
          "innerError": null,
          "message": "When trying to validate required file orgs.csv encountered RequiredFileNotFound error.",
          "target": "orgs.csv"
        }
      ],
      "id": "d194fa3e-18c9-47a1-0fb1-08dad8e7a876",
      "lastActionDateTime": "2022-12-14T05:54:43.8410226Z",
      "resourceLocation": "https://graph.microsoft.com/beta/industryData/dataConnectors/022da4a0-c239-4b07-abed-08dad8e7a07a",
      "status": "succeeded",
      "statusDetail": null,
      "validatedFiles": [],
      "warnings": [
        {
          "code": "OptionalFileNotFound",
          "details": [],
          "innerError": null,
          "message": "When trying to validate file classes.csv encountered OptionalFileNotFound error.",
          "target": "classes.csv"
        },
        {
          "code": "OptionalFileNotFound",
          "details": [],
          "innerError": null,
          "message": "When trying to validate file enrollments.csv encountered OptionalFileNotFound error.",
          "target": "enrollments.csv"
        }
      ]
    }
  ]
}
```
