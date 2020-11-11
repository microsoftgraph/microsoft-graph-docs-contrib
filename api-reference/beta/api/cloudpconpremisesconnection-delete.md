---
title: "Delete cloudPcOnPremisesConnection"
description: "Delete a cloudPcOnPremisesConnection object."
author: "jiajyang"
localization_priority: Normal
ms.prod: ""
doc_type: apiPageType
---

# Delete cloudPcOnPremisesConnection

Namespace: microsoft.graph

Delete a specific [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

When you delete a connection, permissions to the service are removed from the specified Azure resources.

Once the on-premises connection passes health check, which is indicated by the `healthCheckStatus` property, you cannot delete it.
You cannot delete a connection when it's in use, as indicated by the `inUse` property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /deviceManagement/virtualEndpoint/onPremisesConnections/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "delete_onpremisesconnections_from_virtualendpoint"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/{id}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
