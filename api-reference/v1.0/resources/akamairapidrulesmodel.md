---
title: "akamaiRapidRulesModel resource type"
description: "Represents the configuration for Akamai Rapid Rules in a web application firewall (WAF) integration. The resource describes whether Rapid Rules are enabled and the default action applied to matching traffic."
author: "more-rasika"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# akamaiRapidRulesModel resource type

Namespace: microsoft.graph



Represents the configuration for Akamai Rapid Rules in a web application firewall (WAF) integration, as defined in the **rapidRules** property of the [akamaiVerifiedDetailsModel object](../resources/akamaiverifieddetailsmodel.md). Rapid Rules are pre-configured rulesets designed to quickly address emerging threats. This resource describes whether Rapid Rules are enabled and the default action applied to traffic that matches these rules.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultAction|String|The default action Akamai applies to traffic that matches Rapid Rules. Common values include `deny`, `none` or `alert`.|
|isEnabled|Boolean|Indicates whether Akamai Rapid Rules are enabled for the WAF integration. If true, Rapid Rules are active and applied to incoming traffic.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.akamaiRapidRulesModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiRapidRulesModel",
  "isEnabled": "Boolean",
  "defaultAction": "String"
}
```

