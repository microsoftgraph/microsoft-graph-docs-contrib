---
title: "cloudPcStatusDetail resource type"
description: "Describes the extended detail of the Cloud PC status or action status, including code, message, and additional information."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/20/2024
---

# cloudPcStatusDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the extended detail of the Cloud PC status or action status, including code, message, and additional information.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|code|String|The error/warning code associated with the Cloud PC status. Example: `"code": "internalServerError"`.|
|message|String|The status message associated with error code. Example: `"message": "There was an internal server error. Please contact support xxx."`. |
|additionalInformation|[keyValuePair](../resources/keyvaluepair.md) collection|More information about the Cloud PC status. For example, `"additionalInformation": ["{'@odata.type': 'microsoft.graph.keyValuePair','name': 'retriable','value': true }] "`|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcStatusDetail",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStatusDetail",
  "code": "String",
  "message": "String",
  "additionalInformation": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ]
}
```
