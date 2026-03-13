---
title: "aipHeartBeat resource type"
description: "Represents an audit record for Azure Information Protection (AIP) heartbeat events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIP heart beat"
---
# aipHeartBeat resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Information Protection (AIP) heartbeat events. This resource captures periodic status signals from AIP clients, indicating that the protection service is active and operational.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aipHeartBeat"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aipHeartBeat"
}
```

