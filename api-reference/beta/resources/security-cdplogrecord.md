---
title: "cdpLogRecord resource type"
description: "Represents an audit record for common data platform log events in Microsoft Sentinel."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CDP log record"
---
# cdpLogRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for common data platform log events in Microsoft Sentinel. This resource captures general logging information from the common data platform, including processing activities and system events.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cdpLogRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cdpLogRecord"
}
```

