---
title: "mS365DCustomDetectionAuditRecord resource type"
description: "Represents an audit record that captures information about custom detection rules in Microsoft 365 Defender."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MS365D custom detection audit record"
---
# mS365DCustomDetectionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about custom detection rules in Microsoft 365 Defender. This resource provides details about the creation, modification, deletion, and execution of custom detection rules that security teams create to identify specific threat patterns in their environment. These audit records help track changes to detection rules and understand their effectiveness in identifying security threats across the Microsoft 365 Defender platform.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mS365DCustomDetectionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mS365DCustomDetectionAuditRecord"
}
```

