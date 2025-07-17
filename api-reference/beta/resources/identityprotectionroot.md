---
title: "identityProtectionRoot resource type"
description: "Container for navigation properties for Microsoft Graph identity protection resources."
author: "ebasseri"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# identityProtectionRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for the navigation properties for [Microsoft Graph identity protection](identityprotection-overview.md) resources.

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|riskDetections|[riskDetection](../resources/riskdetection.md) collection| Risk detection in Microsoft Entra ID Protection and the associated information about the detection.|
|riskyUsers|[riskyUser](../resources/riskyuser.md) collection|Users that are flagged as at-risk by Microsoft Entra ID Protection. |
|riskyServicePrincipals| [riskyServicePrincipal](riskyserviceprincipal.md) collection | Microsoft Entra service principals that are at risk. |
|servicePrincipalRiskDetections| [servicePrincipalRiskDetection](serviceprincipalriskdetection.md) collection | Represents information about detected at-risk service principals in a Microsoft Entra tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityProtectionRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityProtectionRoot"
}
```
