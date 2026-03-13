---
title: "unifiedSimulationSummaryAuditRecord resource type"
description: "Represents a summary audit record for security simulations, providing aggregated information about simulation campaigns."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Unified simulation summary audit record"
---
# unifiedSimulationSummaryAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary audit record for security simulations, providing aggregated information about simulation campaigns. This resource captures high-level metrics and statistics about security simulation activities, such as phishing simulations, including overall participation rates, completion percentages, success metrics, and other aggregated data points. The summary audit data helps security administrators evaluate the effectiveness of security awareness training initiatives and track organizational improvements in security posture over time.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.unifiedSimulationSummaryAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unifiedSimulationSummaryAuditRecord"
}
```

