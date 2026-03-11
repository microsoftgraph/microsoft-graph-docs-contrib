---
title: "securityComplianceAlertRecord resource type"
description: "Represents an audit record for security and compliance alerts in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Security compliance alert record"
---
# securityComplianceAlertRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures security and compliance alerts in Microsoft 365. This resource tracks alert generation, notification, and management activities, including alert triggering conditions, severity levels, and response actions. These audit records help organizations monitor their security and compliance alert handling processes, providing visibility into threat detection and response workflows.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityComplianceAlertRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityComplianceAlertRecord"
}
```

