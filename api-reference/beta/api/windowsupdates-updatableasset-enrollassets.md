---
title: "updatableAsset: enrollAssets"
description: "Enroll an updatable asset in update management by the deployment service."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAsset: enrollAssets
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enroll updatable assets in update management by the deployment service.

An [azureADDevice](../resources/windowsupdates-azureaddevice.md) can be enrolled in update management; an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) cannot be enrolled in update management.

Enrolling an Azure AD device in update management automatically creates an Azure AD device object if it does not already exist.

You can also use the method [enrollAssetsById](windowsupdates-updatableasset-enrollassetsbyid.md).

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
POST /admin/windows/updates/updatableAssets/enrollAssets
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
|updateCategory|updateCategory|The category of updates for the service to manage. Possible values are: `feature`.|
|assets|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of updatable assets to enroll in update management by the service for the given `updateCategory`.|



## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "updatableasset_enrollassets"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets

Content-Type: application/json
Content-length: 176

{
  "updateCategory": "String",
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

