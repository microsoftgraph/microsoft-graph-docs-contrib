---
title: "scriptRunAuditRecord resource type"
description: "Represents an audit record for script execution activities across Microsoft services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Script run audit record"
---
# scriptRunAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures script execution activities across Microsoft services. This resource tracks the running of scripts in environments such as Exchange Online, SharePoint, Microsoft Teams, or other administrative services. These audit records help organizations monitor automated script activities for security analysis, troubleshooting, and compliance purposes, providing details about script execution parameters, results, and initiated by whom.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.scriptRunAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.scriptRunAuditRecord"
}
```

