---
title: "applicationRiskScore resource type"
description: "Represents the numerical risk score assessment for an application"
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "microsoft-graph"
doc_type: resourcePageType
---

# applicationRiskScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

General business and operational information about the application provider


## Properties
|Property|Type|Description|
|:---|:---|:---|
|compliance|Single|Compliance-related risk score based on adherence to regulatory standards and frameworks (0-10 range)|
|legal|Single|Legal-related risk score based on data protection, privacy policies, and legal compliance (0-10 range)|
|provider|Single|Provider-related risk score based on vendor reputation, reliability, and trustworthiness (0-10 range)|
|security|Single|Security-related risk score based on authentication, encryption, and security practices (0-10 range)|
|total|Single|Overall composite risk score calculated from all risk dimensions (0-10 range)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskScore"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskScore",
  "total": "Single",
  "security": "Single",
  "provider": "Single",
  "compliance": "Single",
  "legal": "Single"
}
```

