---
title: "aipScannerDiscoverEvent resource type"
description: "Represents an audit record for Azure Information Protection (AIP) scanner discovery events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIP scanner discover event"
---
# aipScannerDiscoverEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Information Protection (AIP) scanner discovery events. This resource captures information about files discovered by the AIP scanner during on-premises data classification and protection scans.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aipScannerDiscoverEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aipScannerDiscoverEvent"
}
```

