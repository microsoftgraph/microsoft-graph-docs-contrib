---
title: "msdeIndicatorsSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to threat indicator settings in Microsoft Defender for Endpoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MSDE indicators settings audit record"
---
# msdeIndicatorsSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to threat indicator settings in Microsoft Defender for Endpoint (MDE). This resource provides details about modifications to custom indicators, indicator configurations, and threat intelligence settings used to detect and respond to specific threats. These audit records help security administrators track the creation, modification, and deletion of threat indicators and understand how these changes affect the organization's security posture.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.msdeIndicatorsSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.msdeIndicatorsSettingsAuditRecord"
}
```

