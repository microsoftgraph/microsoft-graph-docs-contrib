---
title: "Delete deviceLink"
description: "Removes the link between the remote network and the CPE device, effectively removing the connection and associated configuration between them."
author: abhijeetsinha
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Delete deviceLink (deprecated)
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes the link between the branch or remote network and the CPE device, effectively removing the connection and associated configuration between them.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_branchsite_delete_devicelinks" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-branchsite-delete-devicelinks-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /networkAccess/connectivity/remotenetworks/{remoteNetworkId}/deviceLinks/{deviceLinkId}
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
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_devicelink"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/335d3a94-b5a9-41fd-b6dd-ae9a8d31a002/deviceLinks/17cb9017-4a33-424b-85fa-e62ff19531a9
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


