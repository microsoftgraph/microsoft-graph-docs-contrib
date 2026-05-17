---
title: "aipFileDeleted resource type"
description: "Represents an audit record for Azure Information Protection (AIP) file deletion events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIP file deleted"
---
# aipFileDeleted resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Information Protection (AIP) file deletion events. This resource captures information about files that were deleted while under AIP protection policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aipFileDeleted"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aipFileDeleted"
}
```

