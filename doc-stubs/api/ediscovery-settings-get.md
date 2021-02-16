---
title: "Get settings"
description: "Read the properties and relationships of a settings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get settings
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [settings](../resources/ediscovery-settings.md) object.

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
GET /compliance/ediscovery/cases/{caseId}/settings
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

If successful, this method returns a `200 OK` response code and a [settings](../resources/ediscovery-settings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_settings"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/settings
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.settings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.ediscovery.settings",
    "id": "54f69a39-9a39-54f6-399a-f654399af654",
    "redundancyDetection": {
      "@odata.type": "microsoft.graph.ediscovery.redundancyDetectionSettings"
    },
    "topicModeling": {
      "@odata.type": "microsoft.graph.ediscovery.topicModelingSettings"
    },
    "ocr": {
      "@odata.type": "microsoft.graph.ediscovery.ocrSettings"
    }
  }
}
```

