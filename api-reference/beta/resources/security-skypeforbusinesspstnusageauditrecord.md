---
title: "skypeForBusinessPSTNUsageAuditRecord resource type"
description: "Represents an audit record for Public Switched Telephone Network (PSTN) usage in Skype for Business."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Skype for Business PSTN usage audit record"
---
# skypeForBusinessPSTNUsageAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Public Switched Telephone Network (PSTN) usage in Skype for Business. This resource tracks telephone-related activities such as calls to and from PSTN numbers, including call durations, phone numbers, and connection types. These audit records help organizations monitor their telephony usage for billing, security analysis, and compliance purposes, providing visibility into voice communication patterns.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.skypeForBusinessPSTNUsageAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.skypeForBusinessPSTNUsageAuditRecord"
}
```

