---
title: "cloudPC: retrieveReviewStatus"
description: "Get the review status of a Cloud PC."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 05/30/2024
---

# cloudPC: retrieveReviewStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [review status](..\resources\cloudpcreviewstatus.md) of a Cloud PC.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_retrievereviewstatus" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrievereviewstatus-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/retrieveReviewStatus
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name        |Description         |
|:---------- |:------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcReviewStatus](../resources/cloudpcreviewstatus.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc.retrieveReviewStatus"
}
-->

``` http
GET https://graph.microsoft.com/deviceManagement/virtualEndpoint/beta/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/retrieveReviewStatus
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcReviewStatus"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcReviewStatus",
  "inReview": true,
  "userAccessLevel": "restricted",
  "reviewStartDateTime": "2021-06-23T09:18:32.8260335Z",
  "restorePointDateTime": "2021-06-23T09:28:32.8260335Z",
  "subscriptionId": "cb6ad4c4-8a17-4245-a644-e4436b1ee204",
  "subscriptionName": "deschutes-INT-DR-test",
  "azureStorageAccountId": "/subscriptions/cb6ad4c4-8a17-4245-a644-e4436b1ee204/resourceGroups/ReviewTest/providers/Microsoft.Storage/storageAccounts/reviewtransfer",
  "azureStorageAccountName": "reviewtransfer",
  "azureStorageContainerName": "container"
}
```
