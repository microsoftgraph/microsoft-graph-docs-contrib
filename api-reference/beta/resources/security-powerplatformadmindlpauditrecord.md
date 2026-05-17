---
title: "powerPlatformAdminDlpAuditRecord resource type"
description: "Represents an audit record that captures information about administrative Data Loss Prevention activities in the Power Platform."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform admin DLP audit record"
---
# powerPlatformAdminDlpAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about administrative Data Loss Prevention (DLP) activities in the Power Platform. This resource provides details about the creation, modification, and management of DLP policies that govern the use of data connectors, environments, and other resources within Power Apps, Power Automate, and related services. These audit records help organizations track changes to their governance policies for low-code and no-code application development platforms.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformAdminDlpAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformAdminDlpAuditRecord"
}
```

