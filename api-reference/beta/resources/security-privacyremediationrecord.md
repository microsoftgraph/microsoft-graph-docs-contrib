---
title: "privacyRemediationRecord resource type"
description: "Represents an audit record for privacy remediation activities across an organization."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy remediation record"
---
# privacyRemediationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures comprehensive information about privacy remediation activities across an organization. This resource tracks the overall remediation efforts for addressing privacy risks, including summaries of actions taken, remediation statuses, and organization-wide privacy compliance efforts. These records help organizations monitor their privacy protection initiatives and demonstrate compliance with privacy regulations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyRemediationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyRemediationRecord"
}
```

