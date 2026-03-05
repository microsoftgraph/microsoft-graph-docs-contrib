---
title: "caseInvestigation resource type"
description: "Represents an audit record for eDiscovery case investigation events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Case investigation"
---
# caseInvestigation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for eDiscovery case investigation events. This resource captures information about investigation activities within eDiscovery cases, including evidence collection, analysis, and review operations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseInvestigation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseInvestigation"
}
```

