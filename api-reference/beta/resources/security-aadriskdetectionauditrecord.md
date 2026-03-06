---
title: "aadRiskDetectionAuditRecord resource type"
description: "Represents an audit record for Microsoft Entra ID risk detection events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Entra ID risk detection audit record"
---
# aadRiskDetectionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft Entra ID risk detection events. This resource captures information about identity risk detections, including suspicious sign-ins, compromised credentials, and other identity-related security risks identified by Microsoft Entra ID Protection.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aadRiskDetectionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aadRiskDetectionAuditRecord"
}
```

