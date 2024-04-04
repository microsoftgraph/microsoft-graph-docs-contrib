---
title: "Get engagementAsyncOperation"
description: "Get an engagementAsyncOperation to track a long-running operation request."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
ms.topic: reference
---

# Get engagementAsyncOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [engagementAsyncOperation](../resources/engagementasyncoperation.md) to track a long-running operation request.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "engagementasyncoperation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/engagementasyncoperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/engagementAsyncOperations/{engagementAsyncOperationId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_engagementasyncoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/engagementAsyncOperations/a6fdce1-c261-48bc-89de-1cfef658c0d5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-engagementasyncoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-engagementasyncoperation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-engagementasyncoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-engagementasyncoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-engagementasyncoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-engagementasyncoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-engagementasyncoperation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementAsyncOperation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/employeeExperience/engagementAsyncOperations/$entity",
  "id": "eyJfdHlwZSI6IkxvbmdSdW5uaW5nT3BlcmF0aW9uIiwiaWQiOiI0ZmVhMjE5Ni0yZTRjLTQ4MzctYTlhNi1iMTVjOTBhNTM2ODkiLCJvcGVyYXRpb24iOiJDcmVhdGVDb21tdW5pdHkifQ",
  "createdDateTime": "2023-12-06T09:42:54.367629-08:00", 
  "lastActionDateTime": "2023-12-06T09:42:54.367663-08:00",
  "status": "succeeded",
  "statusDetail": null,
  "resourceLocation": "https://graph.microsoft.com/beta/employeeExperience/communities('eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')",
  "operationType": "createCommunity",
  "resourceId": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0"
}
```
