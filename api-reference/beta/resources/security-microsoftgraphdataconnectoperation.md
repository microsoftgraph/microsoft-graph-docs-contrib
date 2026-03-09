---
title: "microsoftGraphDataConnectOperation resource type"
description: "Represents an audit record that captures operational activities related to Microsoft Graph Data Connect data extraction and processing."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Graph data connect operation"
---
# microsoftGraphDataConnectOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures operational activities related to Microsoft Graph Data Connect data extraction and processing. This record type documents events such as data pipeline execution, data extraction jobs, transformation processes, and delivery operations, providing visibility into bulk data operations and their operational status, including information about data volume, processing time, and success or failure states.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftGraphDataConnectOperation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftGraphDataConnectOperation"
}
```

