---
title: "dataCenterSecurityCmdletAuditRecord resource type"
description: "Represents an audit record that captures data center security-related cmdlet operations executed by administrators."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Data center security cmdlet audit record"
---
# dataCenterSecurityCmdletAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures data center security-related cmdlet operations executed by administrators. This record type documents administrative actions taken through PowerShell or other command-line interfaces that affect data center security configurations, including changes to security policies, access controls, and monitoring settings.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dataCenterSecurityCmdletAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataCenterSecurityCmdletAuditRecord"
}
```

