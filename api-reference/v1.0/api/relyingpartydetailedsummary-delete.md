---
title: "Delete relyingPartyDetailedSummary"
description: "Delete a relyingPartyDetailedSummary object."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Delete relyingPartyDetailedSummary

Namespace: microsoft.graph



Delete a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "relyingpartydetailedsummary-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/relyingpartydetailedsummary-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /relyingPartyDetailedSummary
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_relyingpartydetailedsummary"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/relyingPartyDetailedSummary
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

