---
title: "onPremisesFileShareScannerDlpAuditRecord resource type"
description: "Represents an audit record that captures information about Data Loss Prevention activities on on-premises file shares."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "On premises file share scanner DLP audit record"
---
# onPremisesFileShareScannerDlpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Data Loss Prevention (DLP) activities on on-premises file shares. This resource provides details about DLP scanning operations, policy matches, and enforcement actions taken on sensitive content stored in on-premises file servers. These audit records help organizations track the discovery and protection of sensitive information in traditional file storage systems that have been integrated with Microsoft information protection solutions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.onPremisesFileShareScannerDlpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.onPremisesFileShareScannerDlpAuditRecord"
}
```

