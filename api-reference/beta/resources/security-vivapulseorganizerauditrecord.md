---
title: "vivaPulseOrganizerAuditRecord resource type"
description: "Represents an audit record for organizer activities in Microsoft Viva Pulse."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva pulse organizer audit record"
---
# vivaPulseOrganizerAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for organizer activities in Microsoft Viva Pulse. This resource captures actions performed by survey organizers in the Viva Pulse platform, including creating surveys, modifying survey questions, setting survey distribution options, managing respondent lists, accessing survey results, and generating reports. The audit data helps organizations maintain compliance with privacy regulations by tracking how employee feedback information is collected, who has access to sensitive feedback data, and how that data is used within the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaPulseOrganizerAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaPulseOrganizerAuditRecord"
}
```

