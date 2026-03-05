---
title: "defenderSecurityAlertBaseRecord resource type"
description: "Represents a base type for Microsoft Defender security alert audit records."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Defender security alert base record"
---
# defenderSecurityAlertBaseRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for Microsoft Defender security alert audit records. This resource serves as the foundation for more specific security alert record types and captures common properties related to security threats and incidents detected by Microsoft Defender security solutions. It provides the core structure for tracking and auditing security alerts across different workloads and environments.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.defenderSecurityAlertBaseRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.defenderSecurityAlertBaseRecord"
}
```

