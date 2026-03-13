---
title: "vivaPulseAdminAuditRecord resource type"
description: "Represents an audit record for administrative activities in Microsoft Viva Pulse."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva pulse admin audit record"
---
# vivaPulseAdminAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for administrative activities in Microsoft Viva Pulse. This resource captures actions performed by administrators managing the Viva Pulse platform, which is used for gathering employee feedback and sentiment analysis. The audit data includes configuration changes, survey template management, access control modifications, and other administrative operations that affect how employee feedback is collected, processed, and reported within the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaPulseAdminAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaPulseAdminAuditRecord"
}
```

