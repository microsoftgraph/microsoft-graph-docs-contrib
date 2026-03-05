---
title: "unifiedSimulationMatchedItemAuditRecord resource type"
description: "Represents an audit record for matched items in security simulations, such as phishing simulation campaigns."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Unified simulation matched item audit record"
---
# unifiedSimulationMatchedItemAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for matched items in security simulations, such as phishing simulation campaigns. This resource captures detailed information about specific items or events that matched criteria within a security simulation, including user interactions with simulated phishing messages, attachment openings, link clicks, and other security-relevant behaviors. The audit data helps security teams evaluate user responses to simulated threats and identify training opportunities to improve organizational security awareness.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.unifiedSimulationMatchedItemAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unifiedSimulationMatchedItemAuditRecord"
}
```

