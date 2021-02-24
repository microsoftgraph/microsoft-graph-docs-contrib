---
title: Delete printerShare
description: Delete a printer share (unshare the associated printer). This action cannot be undone. If the printer is shared again in the future, any Windows users who had previously installed the printer will need to discover and re-install it.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---


# Delete printerShare
Namespace: microsoft.graph

Delete a printer share (unshare the associated [printer](../resources/printer.md)). This action cannot be undone. If the [printer](../resources/printer.md) is shared again in the future, any Windows users who had previously installed the [printer](../resources/printer.md) will need to discover and reinstall it.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table. The signed in user must be a [Printer Administrator](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#printer-administrator).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /print/shares/{printerShareId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_printershare"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/print/shares/{printerShareId}
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

