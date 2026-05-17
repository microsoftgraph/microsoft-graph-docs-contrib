---
title: "exchangeAggregatedOperationRecord resource type"
description: "Represents an aggregated audit record that summarizes operational activities in Exchange Online."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange aggregated operation record"
---
# exchangeAggregatedOperationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregated audit record that summarizes operational activities in Exchange Online. This record type consolidates multiple related Exchange operations into a single audit event, providing a comprehensive view of system activities and actions. The aggregation helps reduce audit log volume while still maintaining visibility into important operational events such as mail flow, configuration changes, and service activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeAggregatedOperationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeAggregatedOperationRecord"
}
```

