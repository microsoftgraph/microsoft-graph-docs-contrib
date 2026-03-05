---
title: "coreReportingSettingsAuditRecord resource type"
description: "Represents an audit record for changes to core reporting settings in security and compliance services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Core reporting settings audit record"
---
# coreReportingSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for changes to core reporting settings in security and compliance services. This resource captures configuration changes to reporting functionality, including modifications to report schedules, formats, and distribution settings.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.coreReportingSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.coreReportingSettingsAuditRecord"
}
```

