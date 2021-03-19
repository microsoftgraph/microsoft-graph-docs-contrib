---
title: "Delete group"
description: "Delete includedGroups by posting to the includedGroups collection."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "mobility-management"
doc_type: apiPageType
---

# Delete group

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete includedGroups by posting to the includedGroups collection.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.all, Policy.ReadWrite.all|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/mobileDeviceManagementPolicies/{id}/includedGroups/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [group](../resources/group.md) object.

The following table shows the properties that are required when you create the [group](../resources/group.md).

|Property|Type|Description|
|:---|:---|:---|

## Response

If successful, this method returns a `204 No Content` response code and a [group](../resources/group.md) object in the response body.

## Examples

### Request

``` http
POST https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/{id}/includedGroups/$ref
Content-Type: application/json
Content-length: 61

{
  "@odata.type": "#microsoft.graph.group"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.group"
}
```

