---
title: "complianceConnectorAuditRecord resource type"
description: "Represents an audit record for compliance connector events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Compliance connector audit record"
---
# complianceConnectorAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for compliance connector events. This resource captures information about data connector activities used to import third-party data into Microsoft 365 for compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.complianceConnectorAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.complianceConnectorAuditRecord"
}
```

