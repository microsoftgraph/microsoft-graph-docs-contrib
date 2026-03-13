---
title: "hrSignalAuditRecord resource type"
description: "Represents an audit record that captures human resources (HR) signals related to security events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "HR signal audit record"
---
# hrSignalAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures human resources (HR) signals related to security events. This record type documents HR-related activities and changes that may have security implications, such as employee status changes, role transitions, performance reviews, or other personnel events that could affect security posture. These audit records help organizations correlate HR data with security monitoring to detect potential insider threats or security risks associated with personnel changes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hrSignalAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hrSignalAuditRecord"
}
```

