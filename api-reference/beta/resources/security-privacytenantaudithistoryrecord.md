---
title: "privacyTenantAuditHistoryRecord resource type"
description: "Represents an audit record that tracks tenant-level privacy management activities and configuration changes."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy tenant audit history record"
---
# privacyTenantAuditHistoryRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that tracks tenant-level privacy management activities and configuration changes. This resource provides details about administrative actions taken to configure privacy settings, policy changes, and other tenant-wide privacy management activities. These audit records help organizations maintain a historical record of privacy management decisions and configurations for compliance and governance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyTenantAuditHistoryRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyTenantAuditHistoryRecord"
}
```

