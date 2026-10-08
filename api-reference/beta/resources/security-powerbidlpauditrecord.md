---
title: "powerBiDlpAuditRecord resource type"
description: "Represents an audit record that captures information about Data Loss Prevention activities in Power BI."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power BI DLP audit record"
---
# powerBiDlpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Data Loss Prevention (DLP) activities in Power BI. This resource provides details about sensitive data detection, policy matches, and enforcement actions taken on Power BI content to prevent the unauthorized disclosure of sensitive information. These audit records help organizations track how DLP policies are being applied to business intelligence assets, monitor compliance with data protection requirements, and investigate potential data leakage incidents.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerBiDlpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerBiDlpAuditRecord"
}
```

