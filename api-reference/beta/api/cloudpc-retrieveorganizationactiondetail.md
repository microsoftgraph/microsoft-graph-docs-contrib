---
title: "cloudPC: retrieveOrganizationActionDetail"
description: "Retrieve a Cloud PC organization action detail."
author: "sqbing"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 02/12/2026
---

# cloudPC: retrieveOrganizationActionDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the details of a [cloudPcOrganizationActionDetail](../resources/cloudpcorganizationactiondetail.md).


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_retrieveorganizationactiondetail" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrieveorganizationactiondetail-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To retrieve a Cloud PC organization action detail using delegated permission:

```http
GET /deviceManagement/virtualEndpoint/retrieveOrganizationActionDetail(actionType='{actionType}')
```

## Function parameters

|Parameter|Type|Description|
|:---|:---|:---|
|actionType|[cloudPcOrganizationActionType](../resources/cloudpcorganizationactiondetail.md#cloudpcorganizationactiontype-values)|The action type. Possible values are `activate`, `deactivate`, and `unknownFutureValue`. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcOrganizationActionDetail](../resources/cloudpcorganizationactiondetail.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc_retrieveorganizationactiondetail"
} -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveOrganizationActionDetail(actionType='activate')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpc-retrieveorganizationactiondetail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpc-retrieveorganizationactiondetail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpc-retrieveorganizationactiondetail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpc-retrieveorganizationactiondetail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpc-retrieveorganizationactiondetail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpc-retrieveorganizationactiondetail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOrganizationActionDetail"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcOrganizationActionDetail",
  "actionType": "activate",
  "status": "inProgress",
  "errorDescription": null
}
```
