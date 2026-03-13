---
title: "mdcEventsRecord resource type"
description: "Represents a record that captures Microsoft Defender for Cloud (MDC) security events and incidents."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MDC events record"
---
# mdcEventsRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a record that captures Microsoft Defender for Cloud (MDC) security events and incidents. This record type documents cloud security posture management events, threat detection findings, and security incidents detected across cloud workloads, providing detailed information about security events across multi-cloud environments to help organizations identify and respond to threats.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mdcEventsRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mdcEventsRecord"
}
```

