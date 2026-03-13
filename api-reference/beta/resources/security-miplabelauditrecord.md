---
title: "mipLabelAuditRecord resource type"
description: "Represents an audit record that captures information about sensitivity label activities on content."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP label audit record"
---
# mipLabelAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about sensitivity label activities on content in the Microsoft Information Protection (MIP) ecosystem. This resource provides details about when labels were applied, changed, or removed from files and other content, including information about the user, device, application, and the specific sensitivity label involved in the operation. These audit records help organizations track and monitor their information protection compliance.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipLabelAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipLabelAuditRecord"
}
```

