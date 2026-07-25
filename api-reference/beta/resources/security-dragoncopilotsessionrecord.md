---
title: "dragonCopilotSessionRecord resource type"
description: "Represents an audit record for Dragon Copilot session events."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 06/12/2026
toc.title: "Dragon Copilot session record"
---
# dragonCopilotSessionRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Dragon Copilot session events. This resource captures information about these activities as part of the Microsoft 365 unified audit log.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dragonCopilotSessionRecord"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.security.dragonCopilotSessionRecord"
}
```
