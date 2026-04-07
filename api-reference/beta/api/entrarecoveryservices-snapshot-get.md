---
title: "Get snapshot"
description: "Get the properties of a snapshot object."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Get snapshot

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [snapshot](../resources/entrarecoveryservices-snapshot.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entrarecoveryservices_snapshot_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-snapshot-get-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/snapshots/{snapshot-id}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.entraRecoveryServices.snapshot](../resources/entrarecoveryservices-snapshot.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_snapshot"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-snapshot-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.entraRecoveryServices.snapshot"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.snapshot",
  "id": "MjAyNC0wOC0yNlQwMjozMDowMFo=",
  "createdDateTime": "2024-08-25T06:30:00Z",
  "totalChangedObjects": 1230000
}
```
