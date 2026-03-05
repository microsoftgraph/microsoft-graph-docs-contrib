---
title: "onPremisesSharePointScannerDlpAuditRecord resource type"
description: "Represents an audit record that captures information about Data Loss Prevention activities on on-premises SharePoint servers."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "On premises SharePoint scanner DLP audit record"
---
# onPremisesSharePointScannerDlpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Data Loss Prevention (DLP) activities on on-premises SharePoint servers. This resource provides details about content scanning operations, policy matches, and remediation actions taken on sensitive information stored in on-premises SharePoint sites. These audit records help organizations track the discovery and protection of sensitive content in hybrid SharePoint environments that leverage Microsoft information protection capabilities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.onPremisesSharePointScannerDlpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.onPremisesSharePointScannerDlpAuditRecord"
}
```

