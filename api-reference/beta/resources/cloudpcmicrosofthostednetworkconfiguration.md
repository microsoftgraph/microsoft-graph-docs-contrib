---
title: "cloudPcMicrosoftHostedNetworkConfiguration resource type"
description: "Represents the Microsoft-hosted network configuration settings for Cloud PC provisioning."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcMicrosoftHostedNetworkConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft-hosted network configuration settings for Cloud PC provisioning.

Inherits from [cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|geographicLocationType|[cloudPcGeographicLocationType](../resources/cloudpcgeographiclocationtype.md)|The geographic location type for the network. The possible values are: `default`, `asia`, `australasia`, `canada`, `europe`, `india`, `africa`, `usCentral`, `usEast`, `usWest`, `southAmerica`, `middleEast`, `centralAmerica`, `usGovernment`, `unknownFutureValue`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `mexico`.|
|regionGroups|[cloudPcRegionGroupConfiguration](../resources/cloudpcregiongroupconfiguration.md) collection|The region group configurations for the network.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.cloudPcNetworkConfiguration",
  "@odata.type": "microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration",
  "geographicLocationType": "String",
  "regionGroups": [
    {
      "@odata.type": "microsoft.graph.cloudPcRegionGroupConfiguration"
    }
  ]
}
```
