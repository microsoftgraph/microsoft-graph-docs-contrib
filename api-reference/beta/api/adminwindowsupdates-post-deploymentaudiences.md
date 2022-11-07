---
title: "Create deploymentAudience"
description: "Create a new deploymentAudience object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# Create deploymentAudience
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/deploymentAudiences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.

You can specify the following properties when you create a **deploymentAudience**.

|Property|Type|Description|
|:---|:---|:---|
|exclusions|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|The assets to exclude from the audience.|
|members|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|The assets to include in the audience.|

## Response

If successful, this method returns a `201 Created` response code and a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_deploymentaudience_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences
Content-Type: application/json
Content-length: 208

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentAudience",
  "members": [
    {"@odata.id": "/beta/directoryObjects/1"}
  ],
  "exclusions": [
    {"@odata.id": "/beta/directoryObjects/2"}
  ]
}
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentAudience"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentAudience",
  "id": "7f960f66-b6ed-6d54-f24a-9b1021a1d17f",
  "members": [
    {"@odata.id": "/beta/directoryObjects/1"}
  ],
  "exclusions": [
    {"@odata.id": "/beta/directoryObjects/2"}
  ]
}
```
