---
title: "cvssSummary resource type"
description: "Represents a common vulnerability scoring system (CVSS) evaluation of a vulnerability."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# cvssSummary resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a common vulnerability scoring system (CVSS) evaluation of a vulnerability.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|score|Edm.Double|The CVSS score about this vulnerability.|
|severity|microsoft.graph.security.vulnerabilitySeverity|The CVSS severity rating for this vulnerability. The possible values are: `none`, `low`, `medium`, `high`, `critical`, `unknownFutureValue`.|
|vectorString|String|The CVSS vector string for this vulnerability.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cvssSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cvssSummary",
  "score": "Double",
  "severity": "String",
  "vectorString": "String"
}
```
