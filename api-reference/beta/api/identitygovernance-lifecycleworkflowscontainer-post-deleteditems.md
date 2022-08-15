---
title: "Create deletedItemContainer"
description: "Create a new deletedItemContainer object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create deletedItemContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [deletedItemContainer](../resources/deleteditemcontainer.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.deletedItemContainer not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [deletedItemContainer](../resources/deleteditemcontainer.md) object.

You can specify the following properties when creating a **deletedItemContainer**.

|Property|Type|Description|
|:---|:---|:---|

## Response

If successful, this method returns a `201 Created` response code and a [deletedItemContainer](../resources/deleteditemcontainer.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_deleteditemcontainer_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.deletedItemContainer not found
Content-Type: application/json
Content-length: 62

{
  "@odata.type": "#microsoft.graph.deletedItemContainer"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deletedItemContainer"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.deletedItemContainer",
  "id": "98dd1b78-10c9-23e6-38c9-53955064efe6"
}
```
