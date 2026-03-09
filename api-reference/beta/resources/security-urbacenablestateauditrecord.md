---
title: "urbacEnableStateAuditRecord resource type"
description: "Represents an audit record for enabling or disabling Unified Role-Based Access Control (URBAC) functionality in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "URBAC enable state audit record"
---
# urbacEnableStateAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for enabling or disabling Unified Role-Based Access Control (URBAC) functionality in Microsoft security services. This resource captures activities related to turning the URBAC feature on or off, including who made the change, when it was made, and the previous and new states of the URBAC functionality. The audit data helps security administrators track critical changes to the access control infrastructure, which can significantly impact the security posture and governance model of the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.urbacEnableStateAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urbacEnableStateAuditRecord"
}
```

