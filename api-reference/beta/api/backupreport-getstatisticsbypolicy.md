---
title: "backupReport: getStatisticsByPolicy"
description: "Get the statistics that correspond to the specified policy ID of a backupPolicyReport."
author: "rigera"
ms.date: 01/09/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# backupReport: getStatisticsByPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the statistics that correspond to the specified policy ID of a [backupPolicyReport](../resources/backuppolicyreport.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backupreport-getstatisticsbypolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backupreport-getstatisticsbypolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/reports/getStatisticsByPolicy(policyId='{backupPolicyId}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|`policyId`|String|The ID of the backup policy for which the report is requested. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [backupPolicyReport](../resources/backuppolicyreport.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "backupreportthis.getstatisticsbypolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/reports/getStatisticsByPolicy(policyId='98a71fd2-00f7-413f-a908-370acfb2983f')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "backupreportthis.getstatisticsbypolicy",
  "truncated": true,
  "@odata.type": "microsoft.graph.backupPolicyReport"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.backupPolicyReport",
  "backupPolicyId": "98a71fd2-00f7-413f-a908-370acfb2983f",
  "displayName": "Exchange Policy - Inadvertent data loss",
  "countStatistics": {
    "total": 5,
    "protectedInProgress": 0,
    "unprotectedInProgress": 0,
    "protectedCompleted": 0,
    "unprotectedCompleted": 0,
    "protectedFailed": 5,
    "unprotectedFailed": 0,
    "removed": null,
    "offboardRequested": 0,
    "lastComputedDateTime": "2026-01-16T09:48:48.5534369Z"
  }
}
```
