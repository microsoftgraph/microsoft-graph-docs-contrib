---
title: "campaignAuditRecord resource type"
description: "Represents an audit record for email campaign events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Campaign audit record"
---
# campaignAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for email campaign events. This resource captures information about threat campaign detection and tracking in Exchange Online Protection and Microsoft Defender for Office 365.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.campaignAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.campaignAuditRecord"
}
```

