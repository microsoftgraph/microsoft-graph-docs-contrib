---
title: "cdpDlpSensitiveEndpointAuditRecord resource type"
description: "Represents an audit record for common data platform Data Loss Prevention (DLP) sensitive content events on endpoints in Microsoft Sentinel."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CDP DLP sensitive endpoint audit record"
---
# cdpDlpSensitiveEndpointAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for common data platform Data Loss Prevention (DLP) sensitive content events on endpoints in Microsoft Sentinel. This resource captures information about sensitive data detected by DLP policies on managed devices.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cdpDlpSensitiveEndpointAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cdpDlpSensitiveEndpointAuditRecord"
}
```

