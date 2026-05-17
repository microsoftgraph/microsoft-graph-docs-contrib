---
title: "epicSMSUnlinkRecord resource type"
description: "Represents an audit record that captures Epic SMS unlinking operations in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Epic SMS unlink record"
---
# epicSMSUnlinkRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Epic SMS unlinking operations in healthcare environments. This record type documents when an administrator or authorized user removes the association between an Epic healthcare system and SMS messaging services. These audit records help healthcare organizations track changes to their communication system integrations for compliance, security, and operational monitoring purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.epicSMSUnlinkRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.epicSMSUnlinkRecord"
}
```

