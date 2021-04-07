---
title: "updatableAssetGroup: addMembersById"
description: "Add members of the same type to an updatable asset group."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAssetGroup: addMembersById
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add members of the same type to an updatable asset group.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|WindowsUpdates.ReadWrite.All|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatableAssets/{updatableAssetGroupId}/addMembersById
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|ids|String collection|List of identifiers corresponding to the updatable assets to add as members of the updatable asset group.|
|memberEntityType|String|The full type of the updatable assets. Possible values are: `#microsoft.graph.windowsUpdates.azureADDevice`.|



## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "updatableassetgroup_addmembersbyid"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/{updatableAssetGroupId}/addMembersById

Content-Type: application/json

{
  "ids": [
    "String",
    "String",
    "String"
  ],
  "memberEntityType": "#microsoft.graph.windowsUpdates.azureADDevice"
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
HTTP/1.1 202 Accepted
```

