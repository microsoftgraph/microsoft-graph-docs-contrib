---
title: "cvssSummary resource type"
description: "Represents a common vulnerability scoring system (CVSS) evaluation of a vulnerability."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cvssSummary resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a common vulnerability scoring system (CVSS) evaluation of a vulnerability.

## Properties

| Property     | Type                                           | Description                                                                                                                                  |
| :----------- | :--------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| score        | Edm.Double                                     | The CVSS score about this vulnerability.                                                                                                     |
| severity     | microsoft.graph.security.vulnerabilitySeverity | The CVSS severity rating for this vulnerability. The possible values are: `none`, `low`, `medium`, `high`, `critical`, `unknownFutureValue`. |
| vectorString | String                                         | The CVSS vector string for this vulnerability.                                                                                               |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cvssSummary"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.cvssSummary",
  "score": "Double",
  "severity": "String",
  "vectorString": "String"
}
```
