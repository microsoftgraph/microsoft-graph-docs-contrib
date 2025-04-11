---
title: "auditLogRecordType enum type"
description: "Specifies the type or schema category of an audit log record."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# auditLogRecordType enum type

Namespace: Microsoft.M365.AuditCore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the type, category, or schema version of an [auditActivity](../resources/auditactivity.md) log record. The specific values are defined by the originating Microsoft 365 workload.

## Members

Member values are defined by the specific workload generating the audit log. Each workload typically has its own set of record types corresponding to different events or schema versions.

| Member          | Value | Description (Conceptual)                                  |
| :-------------- | :---- | :-------------------------------------------------------- |
| SharePoint      | 1     | A generic SharePoint audit record type.                   |
| ExchangeAdmin   | 2     | An Exchange administrative action record type.            |
| EntraGeneral    | 15    | A general Microsoft Entra ID audit record type.              |
| PurviewDLP      | 20    | A Microsoft Purview DLP specific record type.             |
| *Other values*  | *...* | Additional types defined by specific workloads/features. |

**Note:** Consult the documentation for the specific workload's audit log schema for the definitive list of members and their values. The [Unified audit log schema reference](/purview/audit-log-detailed-properties) provides many common values.

## JSON representation

The following JSON representation shows the enum type conceptually.
<!-- {
  "blockType": "resource",
  "@odata.type": "Microsoft.M365.AuditCore.auditLogRecordType"
}-->
``` json
{
  "@odata.type": "#Microsoft.M365.AuditCore.auditLogRecordType"
  // Member definition depends on the originating workload
}
```
