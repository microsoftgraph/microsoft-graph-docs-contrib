---
title: "cdpColdCrawlStatusRecord resource type"
description: "Represents an audit record for common data platform cold crawl status events in Microsoft Sentinel."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CDP cold crawl status record"
---
# cdpColdCrawlStatusRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for common data platform cold crawl status events in Microsoft Sentinel. This resource captures information about the status of background data crawling operations used for compliance data indexing and classification.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cdpColdCrawlStatusRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cdpColdCrawlStatusRecord"
}
```

