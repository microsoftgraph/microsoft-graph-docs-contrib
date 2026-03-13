---
title: "airInvestigationData resource type"
description: "Represents an audit record for Automated Investigation and Response (AIR) investigation events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIR investigation data"
---
# airInvestigationData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Automated Investigation and Response (AIR) investigation events. This resource captures information about automated threat investigations initiated by Microsoft Defender, including investigation triggers, findings, and outcomes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.airInvestigationData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.airInvestigationData"
}
```

