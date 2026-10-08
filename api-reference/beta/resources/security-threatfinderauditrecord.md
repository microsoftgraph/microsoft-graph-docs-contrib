---
title: "threatFinderAuditRecord resource type"
description: "Represents an audit record for threat finder operations in Microsoft Defender for Office 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Threat finder audit record"
---
# threatFinderAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for threat finder operations in Microsoft Defender for Office 365. This resource captures activities related to the detection, analysis, and management of security threats identified by the threat finder capability, helping security administrators track and investigate potential security risks and malicious content within their environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.threatFinderAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatFinderAuditRecord"
}
```

