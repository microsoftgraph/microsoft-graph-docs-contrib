---
title: "userTrainingAuditRecord resource type"
description: "Represents an audit record for security awareness training activities in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "User training audit record"
---
# userTrainingAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for security awareness training activities in Microsoft security services. This resource captures information about user participation in security training, including training assignments, completions, failures, and progress tracking. The audit data helps security administrators monitor the organization's security training program effectiveness, track compliance with required training policies, and identify users who may need additional security education to improve the organization's overall security posture.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.userTrainingAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userTrainingAuditRecord"
}
```

