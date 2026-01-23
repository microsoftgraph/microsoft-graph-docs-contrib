---
title: "configurationBaseline: createSnapshot"
description: "Create a configurationSnapshotJob asynchronously."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# configurationBaseline: createSnapshot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) asynchronously. This API allows an admin to asynchronously create a snapshot and initiate the extraction of the current tenant configuration. If the snapshot job is successfully created, it indicates that the asynchronous extraction process is initiated.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationbaseline-createsnapshot-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationbaseline-createsnapshot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/configurationManagement/configurationSnapshots/createSnapshot
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|description|String|User-friendly description of the snapshot given by the user. Optional.|
|displayName|String|User-friendly name given by the user during the creation of the snapshot. Required.|
|resources|String collection|Names of the resources for which the admin wants to create a snapshot. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) in the response body.

## Examples

### Request

The following example shows a request that creates a snapshot with two Exchange resources.
<!-- {
  "blockType": "request",
  "name": "configurationbaselinethis.createsnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationSnapshots/createSnapshot
Content-Type: application/json

{
  "displayName": "Snapshot Demo",
  "description": "This is Snapshot Description",
  "resources": [
    "microsoft.exchange.sharedmailbox",
    "microsoft.exchange.transportrule"
  ]
}
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.configurationSnapshotJob",
  "id": "c91a1470-acc9-4585-bc03-522ae898f82f",
  "displayName": "Snapshot Demo",
  "description": "This is a snapshot description.",
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
```
