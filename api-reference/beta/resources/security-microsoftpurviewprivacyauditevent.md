---
title: "microsoftPurviewPrivacyAuditEvent resource type"
description: "Represents an audit event that captures privacy-related activities in Microsoft Purview."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview privacy audit event"
---
# microsoftPurviewPrivacyAuditEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit event that captures privacy-related activities in Microsoft Purview. This record type documents events such as data subject requests processing, privacy risk assessments, privacy impact analyses, and personal data management activities, providing visibility into how the organization manages privacy compliance and responds to privacy-related requests in accordance with data protection regulations.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftPurviewPrivacyAuditEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftPurviewPrivacyAuditEvent"
}
```

