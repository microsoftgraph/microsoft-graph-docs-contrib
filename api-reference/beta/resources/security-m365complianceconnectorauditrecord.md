---
title: "m365ComplianceConnectorAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft 365 compliance connectors that import third-party data for compliance processing."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "M365 compliance connector audit record"
---
# m365ComplianceConnectorAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft 365 compliance connectors that import third-party data for compliance processing. This record type documents events such as connector configuration changes, data import operations, and processing status, providing visibility into how non-Microsoft data sources are being incorporated into the compliance ecosystem.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.m365ComplianceConnectorAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.m365ComplianceConnectorAuditRecord"
}
```

