---
title: "Get fileValidateOperation"
description: "Read the properties and relationships of a fileValidateOperation object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get fileValidateOperations

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [fileValidateOperation](../resources/industrydata-filevalidateoperation.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_filevalidateoperation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-filevalidateoperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/operations/{fileValidateOperationId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.fileValidateOperation](../resources/industrydata-filevalidateoperation.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_fileValidateOperation",
  "sampleKeys": ["581b2ef8-dda2-4a3e-bb62-df13fd4a5808"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/operations/581b2ef8-dda2-4a3e-bb62-df13fd4a5808
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-filevalidateoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-filevalidateoperation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-filevalidateoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-filevalidateoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-filevalidateoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-filevalidateoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-filevalidateoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-filevalidateoperation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.fileValidateOperation"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

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
```
