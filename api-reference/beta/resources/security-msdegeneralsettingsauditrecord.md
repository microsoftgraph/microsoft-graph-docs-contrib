---
title: "msdeGeneralSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to general settings in Microsoft Defender for Endpoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MSDE general settings audit record"
---
# msdeGeneralSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to general settings in Microsoft Defender for Endpoint (MDE). This resource provides details about modifications to global configuration options, service settings, and platform-wide preferences that affect how Microsoft Defender for Endpoint operates. These audit records help security administrators track who made changes to the MDE environment, what specific settings were modified, and when those changes occurred.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.msdeGeneralSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.msdeGeneralSettingsAuditRecord"
}
```

