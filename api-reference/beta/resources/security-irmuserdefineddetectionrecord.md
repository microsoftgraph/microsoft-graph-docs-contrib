---
title: "irmUserDefinedDetectionRecord resource type"
description: "Represents an audit record that captures custom user-defined detection rules in Information Rights Management (IRM)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "IRM user defined detection record"
---
# irmUserDefinedDetectionRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures custom user-defined detection rules in Information Rights Management (IRM). This record type documents when custom detection rules are created, modified, or triggered in IRM systems. User-defined detection rules allow organizations to implement custom security monitoring for protected content based on their specific requirements, and these audit records help track the configuration and effectiveness of these custom rules.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.irmUserDefinedDetectionRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.irmUserDefinedDetectionRecord"
}
```

