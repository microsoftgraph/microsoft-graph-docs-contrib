---
title: "microsoftDefenderExpertsXDRAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Defender Experts for XDR (Extended Detection and Response) service."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Defender experts XDR audit record"
---
# microsoftDefenderExpertsXDRAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Defender Experts for XDR (Extended Detection and Response) service. This record type documents events such as threat hunting operations, security incident investigations, expert analysis, and recommendations provided by Microsoft security experts as part of the managed XDR service, including details about detected threats, actions taken, and security insights delivered to the organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftDefenderExpertsXDRAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftDefenderExpertsXDRAuditRecord"
}
```

