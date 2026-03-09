---
title: "vivaPulseReportAuditRecord resource type"
description: "Represents an audit record for report-related activities in Microsoft Viva Pulse."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva pulse report audit record"
---
# vivaPulseReportAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for report-related activities in Microsoft Viva Pulse. This resource captures actions related to the generation, viewing, sharing, and exporting of reports from the Viva Pulse platform, which contains employee feedback and sentiment analysis data. The audit information helps organizations track who accesses potentially sensitive feedback data, how that data is distributed, and ensures compliance with privacy policies and regulations governing employee feedback information.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaPulseReportAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaPulseReportAuditRecord"
}
```

