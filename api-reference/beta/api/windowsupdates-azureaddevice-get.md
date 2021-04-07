---
title: "Get azureADDevice"
description: "Read the properties of an azureADDevice object."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# Get azureADDevice
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.

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
GET /admin/windows/updates/updatableAssets/{azureADDeviceId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_azureaddevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/983f03cd-03cd-983f-cd03-3f98cd033f98
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.azureADDevice"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
    "id": "983f03cd-03cd-983f-cd03-3f98cd033f98",
    "errors": [],
    "enrollments": [
      {
        "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment",
        "updateCategory": "feature"
      }
    ]
  }
}
```

