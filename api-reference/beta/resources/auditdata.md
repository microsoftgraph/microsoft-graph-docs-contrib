---
title: "auditData complex type"
description: "Represents workload-specific data associated with an audit log record."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# auditData complex type

Namespace: Microsoft.M365.AuditCore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents additional, workload-specific data associated with an [auditActivity](../resources/auditactivity.md) record. The structure and properties within this complex type are defined by the originating Microsoft 365 workload (e.g., SharePoint, Exchange) and are not detailed in this specific schema fragment. Consult the documentation for the specific workload's audit log schema for details.

## Properties

Properties vary depending on the workload and the specific audit event. This type acts as a placeholder for that workload-specific data.

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type. The actual properties within this object will vary.
<!-- {
  "blockType": "resource",
  "@odata.type": "Microsoft.M365.AuditCore.auditData",
  "openType": true  // Assuming workload-specific data makes this effectively open
}-->
``` json
{
  "@odata.type": "#Microsoft.M365.AuditCore.auditData"
  // Workload-specific properties appear here
  // Example (conceptual):
  // "SiteUrl": "https://contoso.sharepoint.com/sites/project",
  // "ItemId": "...",
  // "UserAgent": "..."
}
```
