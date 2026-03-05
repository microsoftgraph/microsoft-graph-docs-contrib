---
title: "epicSMSLinkRecord resource type"
description: "Represents an audit record that captures Epic SMS linking operations in healthcare environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Epic SMS link record"
---
# epicSMSLinkRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Epic SMS linking operations in healthcare environments. This record type documents when an administrator or authorized user establishes an association between an Epic healthcare system and SMS messaging services. These audit records help healthcare organizations track the establishment of communication system integrations for compliance with healthcare regulations, security monitoring, and operational oversight.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.epicSMSLinkRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.epicSMSLinkRecord"
}
```

