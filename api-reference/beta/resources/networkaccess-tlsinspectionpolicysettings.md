---
title: "tlsInspectionPolicySettings resource type"
description: "Defines the default behavior and configuration settings for a TLS inspection policy in Global Secure Access."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionPolicySettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the default behavior and configuration settings for a TLS inspection policy in Global Secure Access. These settings determine how traffic should be handled when no specific rules in the policy match the traffic pattern.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultAction|microsoft.graph.networkaccess.tlsInspectionAction|The default action to take when no rules in the policy match the traffic. The possible values are: `bypass`, `inspect`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicySettings",
  "defaultAction": "String"
}
```