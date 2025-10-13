---
title: "cloudPCSnapshot: importSnapshot"
description: "Import the snapshot from customer managed storage account for the given information, and store it in the Azure storage account in the Cloud PC service on behalf of customers. The imported snapshot can be used to provision a new Cloud PC for a specified user with a license assigned."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/10/2025
---

# cloudPCSnapshot: importSnapshot
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Import the snapshot from customer customer-managed storage account for the given information, and store it in the Azure storage account in Cloud PC service on behalf of customers. The imported snapshot can be used to provision a new Cloud PC for a specified user with a license assigned.

For each user, there's only one imported snapshot allowed to prevent conflict. Implicit overwrite for snapshots is unsafe, so if a user is already assigned a snapshot, use `purgeImportedSnapshot` API to delete the previous one and redo the import.

Imported snapshots can be checked through `GET /snapshots/listSnapshotImportResults` API. These don't appear along with background taken snapshot lists presented in `GET /snapshots/` API, which is targeted for recovery and restore usage.

Imported snapshots should also be valid `.vhd` (Virtual Hard Disk) format files, either stored in Azure storage blob or provided by a shared access signature URL. Windows 365 service stores these files and hosts them on behalf of the user for Cloud PC provision use.

Windows 365 administrators need to prepare the Provisioning Policy and assign it to users as a requirement for snapshot import.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_getsubscriptions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-getsubscriptions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/importSnapshot
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                            |
|:----------|:------------------|:-------------------------------------------------------------------------------------------------------|
| sourceFiles   | Collection(microsoft.graph.cloudPcSnapshotImportActionDetail)                                                     | The detailed source information for the files to be imported.                                                                                        |
| assignedUserId     | String   | The unique identifier for the snapshot assigned user, who uses the imported snapshot to provision a new Cloud PC.                                                                            |
| returnType       | microsoft.graph.cloudPcSnapshotImportActionResult                             | The result of the snapshot import action.                                                               |


## Response

If successful, this method returns a `200 OK` response code and [cloudPcSnapshotImportActionResult](../resources/cloudpcsnapshotimportactionresult.md) object in the response body.

## Examples

### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "post_importsnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/importSnapshot
```

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSnapshotImportActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcSnapshotImportActionResult",
    "filename": "snapshotForCloudPc",
    "usageStatus": "notUsed",
    "importStatus": "inProgress",
    "assignedUserPrincipalName": "snapshot@rplusint.onmicrosoft.com",
    "policyName": "Test_ProvisioningPolicy",
    "startDateTime": "2025-01-13T15:13:14Z",
    "endDateTime": null,
    "additionalDetail": null,
}
```

