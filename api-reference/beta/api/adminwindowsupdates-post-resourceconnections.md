---
title: "Create resourceConnection"
description: "Create a new resourceConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create resourceConnection
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new resourceConnection object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/resourceConnections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [resourceConnection](../resources/windowsupdates-resourceconnection.md) object.

You can specify the following properties when creating a **resourceConnection**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|state|resourceConnectionState|**TODO: Add Description**. The possible values are: `connected`, `notAuthorized`, `notFound`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [resourceConnection](../resources/windowsupdates-resourceconnection.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_resourceconnection_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/resourceConnections
Content-Type: application/json
Content-length: 97

{
  "@odata.type": "#microsoft.graph.windowsUpdates.resourceConnection",
  "state": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.resourceConnection"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.resourceConnection",
  "id": "85fbecb2-e407-34e9-9298-4d587857795d",
  "state": "String"
}
```

