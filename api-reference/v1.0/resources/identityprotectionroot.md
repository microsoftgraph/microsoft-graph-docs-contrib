---
title: "identityProtectionRoot resource type"
description: "Container for navigation properties for Microsoft Graph identity protection resources."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# identityProtectionRoot resource type

Namespace: microsoft.graph

Container for the navigation properties for [Microsoft Graph identity protection](identityprotection-overview.md) resources.

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|riskDetections|[riskDetection](../resources/riskdetection.md) collection| Risk detection in Azure AD Identity Protection and the associated information about the detection.|
|riskyUsers|[riskyUser](../resources/riskyuser.md) collection|Users that are flagged as at-risk by Azure AD Identity Protection. |
|riskyServicePrincipals| [riskyServicePrincipal](riskyserviceprincipal.md) collection | Azure AD service principals that are at risk. |
|servicePrincipalRiskDetections| [servicePrincipalRiskDetection](serviceprincipalriskdetection.md) collection | Represents information about detected at-risk service principals in an Azure AD tenant.|

## JSON representation
The following is a JSON representation of the resource.
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

