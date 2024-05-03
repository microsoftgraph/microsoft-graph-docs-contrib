---
title: "securityScoreHistory resource type"
description: "The security score history entity"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# securityScoreHistory resource type

Namespace: microsoft.graph.partner.security

Represents a single history entry for the security score where the score or the requirements changed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compliantSecurityRequirementsCount|Int64|The count of compliant security requirements at the time.|
|createdDateTime|DateTimeOffset|The date the history entry was created.|
|id|String|Identifier for the history entry.|
|score|Single|The score recorded at this time.|
|totalSecurityRequirementsCount|Int64|The total count of requirements at the time.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.securityScoreHistory",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.securityScoreHistory",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "score": "Single",
  "compliantSecurityRequirementsCount": "Integer",
  "totalSecurityRequirementsCount": "Integer"
}
```

