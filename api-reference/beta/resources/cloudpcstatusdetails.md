---
title: "cloudPcStatusDetails resource type"
description: "Represents details about the status of a Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the details of the Cloud PC status. Starting from January 31, 2023, statusDetails property will no longer be supported and will be marked as deprecated. Please use statusDetail instead.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|[keyValuePair](../resources/keyvaluepair.md) collection|Any additional information about the Cloud PC status.|
|code|String|The code associated with the Cloud PC status.|
|message|String|The status message.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcStatusDetails",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStatusDetails",
  "additionalInformation": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "code": "String",
  "message": "String"
}
```
