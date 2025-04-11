---
title: "auditLogUserType enum type"
description: "Specifies the type of user or principal associated with an audit log record."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# auditLogUserType enum type

Namespace: Microsoft.M365.AuditCore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the type or category of the user or principal that performed the action recorded in an [auditActivity](../resources/auditactivity.md) log. The specific values are defined by the originating Microsoft 365 workload. Used in [auditActivityUserInfo](../resources/auditactivityuserinfo.md).

## Members

Member values are defined by the specific workload generating the audit log. Common examples might include:

| Member          | Value | Description (Conceptual)                                     |
| :-------------- | :---- | :----------------------------------------------------------- |
| Regular         | 0     | A standard user account.                                     |
| System          | 1     | A system account or process.                                |
| Application     | 2     | An application or service principal.                         |
| ServicePrincipal| 3     | A service principal identity.                                |
| Guest           | 4     | A guest user account.                                        |
| *Other values*  | *...* | Additional types defined by specific workloads.              |

**Note:** Consult the documentation for the specific workload's audit log schema for the definitive list of members and their values.

## JSON representation

The following JSON representation shows the enum type conceptually.
<!-- {
  "blockType": "resource",
  "@odata.type": "Microsoft.M365.AuditCore.auditLogUserType"
}-->
``` json
{
  "@odata.type": "#Microsoft.M365.AuditCore.auditLogUserType"
  // Member definition depends on the originating workload
}
```
