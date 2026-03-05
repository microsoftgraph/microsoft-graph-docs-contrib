---
title: "threatIntelligenceMailData resource type"
description: "Represents threat intelligence data specifically related to email messages analyzed by Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Threat intelligence mail data"
---
# threatIntelligenceMailData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat intelligence data specifically related to email messages analyzed by Microsoft security services. This resource captures detailed information about potential email-based threats, including phishing attempts, spam, malicious attachments, and other email security indicators. The data helps security teams identify, investigate, and remediate email-based security threats within their organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.threatIntelligenceMailData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligenceMailData"
}
```

