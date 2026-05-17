---
title: "powerPlatformLockboxResourceAccessRequestAuditRecord resource type"
description: "Represents an audit record that captures information about Customer Lockbox access requests for Power Platform resources."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform lockbox resource access request audit record"
---
# powerPlatformLockboxResourceAccessRequestAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Customer Lockbox access requests for Power Platform resources. This resource provides details about requests made by Microsoft support engineers to access customer data in Power Platform services, the approval workflow for such requests, and the actions taken during the approved access period. These audit records help organizations maintain visibility and control over Microsoft's access to their Power Platform environments and data.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformLockboxResourceAccessRequestAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformLockboxResourceAccessRequestAuditRecord"
}
```

