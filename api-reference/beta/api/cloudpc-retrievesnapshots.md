---
title: "cloudPC: retrieveSnapshots"
description: "List all snapshots of a Cloud PC."
author: "doudoujinjin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/02/2024
---

# cloudPC: retrieveSnapshots

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [cloudPcSnapshot](../resources/cloudpcsnapshot.md) resources for a Cloud PC.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_retrievesnapshots" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrievesnapshots-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/retrieveSnapshots
```

## Request headers

|Name        |Description         |
|:---------- |:------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [cloudPcSnapshot](../resources/cloudpcsnapshot.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.retrieveSnapshots"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/retrieveSnapshots
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcretrievesnapshots-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcretrievesnapshots-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcretrievesnapshots-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcretrievesnapshots-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcretrievesnapshots-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcretrievesnapshots-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcSnapshot)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcSnapshot)",
  "value": [
    {
        "id": "CPC_d4cfdeb2-d409-4e97-87ce-618b704d75f1_d95c0bde-485d-400e-9bef-083905e1b768",
        "cloudPcId": "d8b39ec3-03c9-457f-824e-25f48197cec6",
        "status": "ready",
        "createdDateTime": "2024-08-19T14:05:17.2480723Z",
        "lastRestoredDateTime": null,
        "snapshotType": "automatic",
        "expirationDateTime": null
    },
    {
        "id": "CPC_d4cfdeb2-d409-4e97-87ce-618b704d75f1_423e5d9d-06e0-4b3b-8f0c-80f5a5215a10",
        "cloudPcId": "d8b39ec3-03c9-457f-824e-25f48197cec6",
        "status": "ready",
        "createdDateTime": "2024-08-19T02:05:15.624315Z",
        "lastRestoredDateTime": null,
        "snapshotType": "automatic",
        "expirationDateTime": null
    }
  ]
}
```
