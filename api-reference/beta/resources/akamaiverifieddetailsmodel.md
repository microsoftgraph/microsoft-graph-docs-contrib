---
title: "akamaiVerifiedDetailsModel resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# akamaiVerifiedDetailsModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeAttackGroups|[akamaiAttackGroupActionModel](../resources/akamaiattackgroupactionmodel.md) collection|**TODO: Add Description**|
|activeCustomRules|[akamaiCustomRuleModel](../resources/akamaicustomrulemodel.md) collection|**TODO: Add Description**|
|dnsConfiguration|[webApplicationFirewallDnsConfiguration](../resources/webapplicationfirewalldnsconfiguration.md)|**TODO: Add Description** Inherited from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).|
|rapidRules|[akamaiRapidRulesModel](../resources/akamairapidrulesmodel.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.akamaiVerifiedDetailsModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiVerifiedDetailsModel",
  "dnsConfiguration": {
    "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
  },
  "rapidRules": {
    "@odata.type": "microsoft.graph.akamaiRapidRulesModel"
  },
  "activeAttackGroups": [
    {
      "@odata.type": "microsoft.graph.akamaiAttackGroupActionModel"
    }
  ],
  "activeCustomRules": [
    {
      "@odata.type": "microsoft.graph.akamaiCustomRuleModel"
    }
  ]
}
```

