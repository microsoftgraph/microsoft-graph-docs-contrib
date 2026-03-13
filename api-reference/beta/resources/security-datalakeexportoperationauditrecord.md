---
title: "dataLakeExportOperationAuditRecord resource type"
description: "Represents an audit record that captures data lake export operations and activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Data lake export operation audit record"
---
# dataLakeExportOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures data lake export operations and activities. This record type documents the export of data to data lakes, including details about the data exported, the export destination, the user who initiated the export, and the status of the operation. It helps track data movement for compliance and security monitoring purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dataLakeExportOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataLakeExportOperationAuditRecord"
}
```

