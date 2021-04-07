---
title: "updatableAssetGroup: removeMembers"
description: "Remove members from an updatable asset group."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAssetGroup: removeMembers
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove members from an updatable asset group.

You can also use the method [removeMembersById](windowsupdates-updatableassetgroup-removemembersbyid.md).

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
POST /updatableAssetGroup/{updatableAssetGroupId}/removeMembers
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
|assets|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of updatable assets to remove as members of the updatable asset group.|



## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "updatableassetgroup_removemembers"
}
-->
``` http
POST https://graph.microsoft.com/beta/updatableAssetGroup/{updatableAssetGroupId}/removeMembers

Content-Type: application/json
Content-length: 145

{
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.updatableAsset",
      "id": "String (identifier)"
    }
  ]
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

