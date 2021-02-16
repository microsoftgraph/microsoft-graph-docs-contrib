---
title: "Update settings"
description: "Update the properties of a settings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

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

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|redundancyDetection|[redundancyDetectionSettings](../resources/ediscovery-redundancydetectionsettings.md)|**TODO: Add Description**|
|topicModeling|[topicModelingSettings](../resources/ediscovery-topicmodelingsettings.md)|**TODO: Add Description**|
|ocr|[ocrSettings](../resources/ediscovery-ocrsettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [settings](../resources/ediscovery-settings.md) object in the response body.

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
  "@odata.type": "#microsoft.graph.ediscovery.settings",
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
```

