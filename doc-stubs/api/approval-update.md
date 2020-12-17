---
title: "Update approval"
description: "Update the properties of an approval object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update approval
Namespace: microsoft.graph

Update the properties of an [approval](../resources/approval.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /request/approval
PATCH /user/approvals/{approvalId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [approval](../resources/approval.md) object.

The following table shows the properties that are required when you update the [approval](../resources/approval.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [approval](../resources/approval.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_approval"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/request/approval
Content-Type: application/json
Content-length: 50

{
  "@odata.type": "#microsoft.graph.approval"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.approval",
  "id": "07ac1000-1000-07ac-0010-ac070010ac07"
}
```

