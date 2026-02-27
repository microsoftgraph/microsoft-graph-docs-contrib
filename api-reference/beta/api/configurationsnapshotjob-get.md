---
title: "Get configurationSnapshotJob"
description: "Read the properties and relationships of a configurationSnapshotJob object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Get configurationSnapshotJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationsnapshotjob_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationsnapshotjob-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationSnapshotJobs/{configurationSnapshotJobId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_configurationsnapshotjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationSnapshotJobs/c91a1470-acc9-4585-bc03-522ae898f82f
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationSnapshotJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationSnapshotJobs/$entity",
  "@microsoft.graph.tips": "This request only returns a subset of the resource's properties. Your app will need to use $select to return non-default properties. To find out what other properties are available for this resource see https://learn.microsoft.com/graph/api/resources/configurationSnapshotJob",
  "id": "c91a1470-acc9-4585-bc03-522ae898f82f",
  "displayName": "Snapshot Demo",
  "description": "This is Snapshot Description",
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
      "displayName": "AdminXTA SDFTestOrg627621"
    }
  }
}
```
