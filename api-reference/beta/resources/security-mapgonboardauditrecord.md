---
title: "mapgOnboardAuditRecord resource type"
description: "Represents an audit record that captures activities related to onboarding processes for Microsoft Active Protection Gateway (MAPG)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MAPG onboard audit record"
---
# mapgOnboardAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to onboarding processes for Microsoft Active Protection Gateway (MAPG). This record type documents events such as tenant enrollment, service provisioning, configuration setup, and deployment activities when an organization adopts and implements the Active Protection Gateway service, providing visibility into the service activation lifecycle.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mapgOnboardAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mapgOnboardAuditRecord"
}
```

