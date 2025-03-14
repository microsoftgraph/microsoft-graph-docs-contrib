---
title: "cloudPcStatusDetails resource type (deprecated)"
description: "Represents details about the status of a Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/20/2024
---

# cloudPcStatusDetails resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about a Cloud PC status.

> [!NOTE]
> This resource type is deprecated and will stop returning data on August 31, 2024. Use [cloudPcStatusDetail](../resources/cloudpcstatusdetail.md) instead.

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
