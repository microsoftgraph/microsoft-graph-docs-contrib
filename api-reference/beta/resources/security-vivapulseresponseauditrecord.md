---
title: "vivaPulseResponseAuditRecord resource type"
description: "Represents an audit record for response-related activities in Microsoft Viva Pulse surveys."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva pulse response audit record"
---
# vivaPulseResponseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for response-related activities in Microsoft Viva Pulse surveys. This resource captures information about employee feedback submissions in the Viva Pulse platform, including when surveys were completed, anonymized respondent information, and survey completion rates. The audit data helps organizations ensure proper handling of sensitive employee feedback while protecting individual privacy, supporting compliance with privacy regulations governing how employee sentiment data is collected and managed.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaPulseResponseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaPulseResponseAuditRecord"
}
```

