---
title: "List recoveryJobs"
description: "Get a list of recovery jobs for a specific snapshot."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List recoveryJobs

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) objects for a specific snapshot.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entrarecoveryservices-snapshot-list-recoveryjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-snapshot-list-recoveryjobs-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryJobs
```

## Optional query parameters

This method supports the `$select`, `$top`, `$filter`, and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 100 and 999 recovery job objects respectively.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.entraRecoveryServices.recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_recoveryjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-recoveryjob-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-recoveryjob-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-recoveryjob-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-recoveryjob-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-recoveryjob-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-recoveryjob-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-recoveryjob-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraRecoveryServices.recoveryJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=./recoveryJobs",  
  "value": 
  [
    {
      "id": "d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1", 
      "status": "successful",
      "targetStateDateTime": "2024-08-26T02:30:00Z" ,
      "jobStartDateTime":  "2024-08-26T08:30:00Z",
      "jobCompletionDateTime": "2024-08-26T13:30:00Z",
      "totalObjectsModified": 1024,
      "totalLinksModified": 124,
      "totalFailedChanges": 0,
      "totalChangedObjectsCalculated" : 1024,
      "totalChangedLinksCalculated" : 124,
      "filteringCriteria": null
    },
    {
      "id": "a1b2c3d4-5e6f-7a8b-9c0d-e1f2a3b4c5d6", 
      "status": "successful",
      "targetStateDateTime": "2025-08-26T02:30:00Z" ,
      "jobStartDateTime":  "2025-08-26T08:30:00Z",
      "jobCompletionDateTime": "2025-08-26T13:30:00Z",
      "totalObjectsModified": 2048,
      "totalLinksModified": 256,
      "totalFailedChanges": 0,
      "totalChangedObjectsCalculated" : 2304,
      "totalChangedLinksCalculated" : 2304,
      "filteringCriteria": null
    }
  ]
}
```
