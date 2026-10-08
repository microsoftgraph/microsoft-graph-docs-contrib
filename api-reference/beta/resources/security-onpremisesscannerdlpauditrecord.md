---
title: "onPremisesScannerDlpAuditRecord resource type"
description: "Represents an audit record that captures information about general on-premises scanner Data Loss Prevention activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "On premises scanner DLP audit record"
---
# onPremisesScannerDlpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about general on-premises scanner Data Loss Prevention (DLP) activities. This resource provides details about scanner operations, configuration changes, and system-level events related to the deployment and management of on-premises DLP scanning infrastructure. These audit records help organizations track the health, performance, and administration of their on-premises content scanning solutions integrated with Microsoft information protection services.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.onPremisesScannerDlpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.onPremisesScannerDlpAuditRecord"
}
```

