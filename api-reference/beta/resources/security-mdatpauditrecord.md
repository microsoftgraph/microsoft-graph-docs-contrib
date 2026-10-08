---
title: "mdatpAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Defender for Endpoint (formerly Microsoft Defender ATP)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MDATP audit record"
---
# mdatpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Defender for Endpoint (formerly Microsoft Defender ATP). This record type documents events such as endpoint security policy changes, alert management, investigation actions, and remediation activities performed within the Defender for Endpoint platform, providing visibility into endpoint security management operations.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mdatpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mdatpAuditRecord"
}
```

