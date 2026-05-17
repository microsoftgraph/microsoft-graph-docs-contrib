---
title: "privacyPortalAuditRecord resource type"
description: "Represents an audit record that captures information about activities in the privacy management portal."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy portal audit record"
---
# privacyPortalAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities in the privacy management portal. This resource provides details about actions taken by administrators and privacy officers within the Microsoft Purview Privacy Portal, including configuration changes, data subject request management, and privacy risk remediation activities. These audit records help organizations track administrative actions related to privacy management and demonstrate compliance with privacy regulations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyPortalAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyPortalAuditRecord"
}
```

