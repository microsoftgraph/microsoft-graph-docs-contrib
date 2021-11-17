---
title: "cloudPcStatusDetails resource type"
description: "The details of the Cloud PC status."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The details of the Cloud PC status.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|code|String|The code associated with the Cloud PC status.|
|message|String|The status message.|
|additionalInformation|[KeyValuePair](../resources/keyvaluepair.md) collection|Any additional information about the Cloud PC status.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcStatusDetails",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStatusDetails",
  "code": "String",
  "message": "String",
  "additionalInformation": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ]
}
```
