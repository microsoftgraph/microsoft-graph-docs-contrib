---
title: "cloudFlareVerifiedDetailsModel resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# cloudFlareVerifiedDetailsModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dnsConfiguration|[webApplicationFirewallDnsConfiguration](../resources/webapplicationfirewalldnsconfiguration.md)|**TODO: Add Description** Inherited from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).|
|enabledCustomRules|[cloudFlareRuleModel](../resources/cloudflarerulemodel.md) collection|**TODO: Add Description**|
|enabledRecommendedRulesets|[cloudFlareRulesetModel](../resources/cloudflarerulesetmodel.md) collection|**TODO: Add Description**|
|zoneId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudFlareVerifiedDetailsModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareVerifiedDetailsModel",
  "dnsConfiguration": {
    "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
  },
  "zoneId": "String",
  "enabledRecommendedRulesets": [
    {
      "@odata.type": "microsoft.graph.cloudFlareRulesetModel"
    }
  ],
  "enabledCustomRules": [
    {
      "@odata.type": "microsoft.graph.cloudFlareRuleModel"
    }
  ]
}
```

