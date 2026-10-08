---
title: "mdiAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Defender for Identity (MDI) operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MDI audit record"
---
# mdiAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Defender for Identity (MDI) operations. This record type documents events such as identity threat detection, configuration changes, and administrative actions taken within the Defender for Identity service, providing visibility into identity-based security monitoring and incident management activities.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mdiAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mdiAuditRecord"
}
```

