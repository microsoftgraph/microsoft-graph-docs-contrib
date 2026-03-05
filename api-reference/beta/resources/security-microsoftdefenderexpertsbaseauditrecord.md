---
title: "microsoftDefenderExpertsBaseAuditRecord resource type"
description: "Represents a base audit record type for Microsoft Defender Experts service activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Defender experts base audit record"
---
# microsoftDefenderExpertsBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base audit record type for Microsoft Defender Experts service activities. This abstract record type serves as the parent class for more specific audit records related to Microsoft Defender Experts services, providing common properties and functionality for tracking security monitoring and managed threat hunting activities performed by Microsoft security experts on behalf of an organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftDefenderExpertsBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftDefenderExpertsBaseAuditRecord"
}
```

