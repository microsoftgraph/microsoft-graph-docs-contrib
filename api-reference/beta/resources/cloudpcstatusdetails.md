---
title: "cloudPcStatusDetails resource type (deprecated)"
description: "Represents details about the status of a Cloud PC."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcStatusDetails resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> Starting from August 31, 2024, cloudPcStatusDetails property will no longer be supported and will be marked as deprecated. Please use [cloudPcStatusDetail](../resources/cloudpcstatusdetail.md) instead.

Describes the details of the Cloud PC status.

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
