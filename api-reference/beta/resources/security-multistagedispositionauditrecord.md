---
title: "multiStageDispositionAuditRecord resource type"
description: "Represents an audit record that captures information about multi-stage disposition review processes for content."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Multi stage disposition audit record"
---
# multiStageDispositionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about multi-stage disposition review processes for content. This resource provides details about the workflow of content disposition decisions that require multiple levels of approval or review before final action is taken. These audit records help organizations track the lifecycle of content disposition processes, including who reviewed content, what decisions were made at each stage, and the final disposition outcomes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.multiStageDispositionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.multiStageDispositionAuditRecord"
}
```

