---
title: "List jobs"
description: "Get a list of all recovery jobs (both preview and recovery) across all snapshots."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List jobs

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all recovery [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md) objects (both preview and recovery jobs) across all snapshots for the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entrarecoveryservices-recovery-list-jobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-recovery-list-jobs-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/jobs
```

## Optional query parameters

This method supports the `$select`, `$top`, `$filter`, and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 100 and 999 job objects respectively.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md) objects in the response body. The response uses `@odata.type` annotations to differentiate between [recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md) and [recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) objects.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_recoveryjobbase"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/jobs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-recoveryjobbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-recoveryjobbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-recoveryjobbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-recoveryjobbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-recoveryjobbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-recoveryjobbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraRecoveryServices.recoveryJobBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recovery/jobs",
  "value": [
    {
      "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryPreviewJob",
      "id": "d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1",
      "status": "successful",
      "targetStateDateTime": "2024-08-26T02:30:00Z",
      "jobStartDateTime": "2024-08-26T06:40:00Z",
      "jobCompletionDateTime": "2024-08-26T08:50:00Z",
      "filteringCriteria": null,
      "totalChangedObjectsCalculated": 2000,
      "totalChangedLinksCalculated": 300
    },
    {
      "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJob",
      "id": "3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4",
      "status": "successful",
      "targetStateDateTime": "2024-08-26T02:30:00Z",
      "jobStartDateTime": "2024-08-26T08:30:00Z",
      "jobCompletionDateTime": "2024-08-26T13:30:00Z",
      "filteringCriteria": null,
      "totalChangedObjectsCalculated": 1024,
      "totalChangedLinksCalculated": 124,
      "totalObjectsModified": 1024,
      "totalLinksModified": 124,
      "totalFailedChanges": 0
    }
  ]
}
```
