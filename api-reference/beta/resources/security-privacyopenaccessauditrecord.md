---
title: "privacyOpenAccessAuditRecord resource type"
description: "Represents an audit record that captures information about open access risks to privacy-sensitive content."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy open access audit record"
---
# privacyOpenAccessAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about open access risks to privacy-sensitive content. This resource provides details about detection of personal or sensitive information that is broadly shared or publicly accessible, creating potential privacy risks. These audit records help organizations identify and remediate situations where privacy-regulated data might be improperly exposed, supporting compliance with data protection requirements and privacy risk management.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyOpenAccessAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyOpenAccessAuditRecord"
}
```

