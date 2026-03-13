---
title: "vivaLearningAuditRecord resource type"
description: "Represents an audit record for user activities in Microsoft Viva Learning."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva learning audit record"
---
# vivaLearningAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for user activities in Microsoft Viva Learning. This resource captures end-user actions within the Viva Learning platform, including course enrollments, course completions, learning content access, certificate acquisitions, and content sharing activities. The audit data helps organizations track learning progress, monitor compliance with mandatory training requirements, and understand how learning resources are being utilized across the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaLearningAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaLearningAuditRecord"
}
```

