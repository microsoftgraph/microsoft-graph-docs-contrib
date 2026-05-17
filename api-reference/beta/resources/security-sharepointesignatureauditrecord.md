---
title: "sharePointESignatureAuditRecord resource type"
description: "Represents an audit record for electronic signature activities in SharePoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint e signature audit record"
---
# sharePointESignatureAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures electronic signature activities in SharePoint. This resource tracks events related to digital signing processes for documents stored in SharePoint, including signature requests, approvals, rejections, and completions. These audit records help organizations monitor e-signature workflows for compliance with digital signature regulations and provide an audit trail of who signed documents and when.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointESignatureAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointESignatureAuditRecord"
}
```

