---
title: "privacyDataMatchAuditRecord resource type"
description: "Represents an audit record that captures information about matches to privacy-related data types."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Privacy data match audit record"
---
# privacyDataMatchAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about matches to privacy-related data types. This resource provides details about the detection of personal data, sensitive information, and privacy-regulated content within Microsoft 365 environments. These audit records help organizations track the identification of privacy-relevant information, understand where personal data exists across their systems, and support data subject rights management and privacy compliance requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.privacyDataMatchAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.privacyDataMatchAuditRecord"
}
```

