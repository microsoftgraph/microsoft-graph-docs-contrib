---
title: "wdatpAlertsAuditRecord resource type"
description: "Represents an audit record for Windows Defender Advanced Threat Protection (now Microsoft Defender for Endpoint) alert activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "WDATP alerts audit record"
---
# wdatpAlertsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Windows Defender Advanced Threat Protection (now Microsoft Defender for Endpoint) alert activities. This resource captures information about security alerts, including their creation, modification, resolution, and administrative actions taken in response to detected threats. The audit data helps security teams track the lifecycle of security incidents, document response actions, and maintain a comprehensive audit trail of threat detection and remediation activities for compliance and security management purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.wdatpAlertsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.wdatpAlertsAuditRecord"
}
```

