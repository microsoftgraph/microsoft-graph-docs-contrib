---
title: "List configurationSnapshotJobs"
description: "Get a list of the configurationSnapshotJob objects and their properties."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# List configurationSnapshotJobs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [configurationSnapshotJob](../resources/configurationsnapshotjob.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmanagement_list_configurationsnapshotjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-list-configurationsnapshotjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationSnapshotJobs
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderBy`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationSnapshotJob](../resources/configurationsnapshotjob.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_configurationsnapshotjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationSnapshotJobs
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.configurationSnapshotJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationSnapshotJobs",
  "@microsoft.graph.tips": "This request only returns a subset of the resource's properties. Your app will need to use $select to return non-default properties. To find out what other properties are available for this resource see https://learn.microsoft.com/graph/api/resources/configurationSnapshotJob",
  "value": [
    {
      "id": "1a14c735-e01b-4c6e-a0e9-02ecbe7ad832",
      "displayName": "Snapshot Creation 1",
      "description": "Snapshot Description",
      "tenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843",
      "status": "notStarted",
      "resources": [
        "microsoft.exchange.sharedmailbox",
        "microsoft.exchange.transportrule"
      ],
      "createdDateTime": "2025-02-18T15:33:51.9823159Z",
      "completedDateTime": "0001-01-01T00:00:00Z",
      "resourceLocation": "",
      "createdBy": {
        "user": {
          "id": "98ceffcc-7c54-4227-8844-835af5a023ce",
          "displayName": "Test Contoso User"
        }
      }
    },
    {
      "id": "c91a1470-acc9-4585-bc03-522ae898f82f",
      "displayName": "Snapshot Creation Demo 1",
      "description": "Snapshot Description",
      "tenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843",
      "status": "notStarted",
      "resources": [
        "microsoft.exchange.sharedmailbox",
        "microsoft.exchange.transportrule"
      ],
      "createdDateTime": "2025-02-18T15:43:59.7935268Z",
      "completedDateTime": "0001-01-01T00:00:00Z",
      "resourceLocation": "",
      "createdBy": {
        "user": {
          "id": "98ceffcc-7c54-4227-8844-835af5a023ce",
          "displayName": "Test Contoso User"
        }
      }
    }
  ]
}
```
