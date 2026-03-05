---
title: "securityComplianceUserChangeAuditRecord resource type"
description: "Represents an audit record for user-related changes in the Security & Compliance Center."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Security compliance user change audit record"
---
# securityComplianceUserChangeAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures user-related changes in the Security & Compliance Center. This resource tracks modifications to user accounts, properties, and settings within the security and compliance management context. These audit records help organizations monitor user account management activities that may affect security and compliance operations, providing visibility into user-related changes that could impact security posture.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityComplianceUserChangeAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityComplianceUserChangeAuditRecord"
}
```

