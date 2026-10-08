---
title: "complianceDlpEndpointAuditRecord resource type"
description: "Represents an audit record for Microsoft Purview Data Loss Prevention (DLP) endpoint events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview DLP endpoint audit record"
---
# complianceDlpEndpointAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft Purview Data Loss Prevention (DLP) endpoint events. This resource captures information about DLP policy matches and enforcement actions on managed endpoint devices.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.complianceDlpEndpointAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.complianceDlpEndpointAuditRecord"
}
```

