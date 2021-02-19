---
title: "Update settings"
description: "Update the properties of a settings object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Update settings

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [settings](../resources/ediscovery-settings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /compliance/ediscovery/cases/{caseId}/settings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [settings](../resources/ediscovery-settings.md) object.

The following table shows the properties that are required when you update the [settings](../resources/ediscovery-settings.md).

None

## Response

If successful, this method returns a `204 OK` response code and an updated [settings](../resources/ediscovery-settings.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_settings"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/settings
Content-Type: application/json
Content-length: 350

{
    "redundancyDetection": {
        "isEnabled": false,
        "similarityThreshold": 70,
        "minWords": 12,
        "maxWords": 400000
    },
    "topicModeling": {
        "isEnabled": false,
        "ignoreNumbers": false,
        "topicCount": 50,
        "dynamicallyAdjustTopicCount": false
    },
    "ocr": {
        "isEnabled": true,
        "maxImageSize": 12000
    }
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
HTTP/1.1 204 No Content
Content-Type: application/json
```
