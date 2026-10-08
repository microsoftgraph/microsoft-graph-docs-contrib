---
title: "threatIntelligenceUrlClickData resource type"
description: "Represents data about URL clicks monitored by Microsoft Defender for Office 365 for security threat assessment."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Threat intelligence URL click data"
---
# threatIntelligenceUrlClickData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data about URL clicks monitored by Microsoft Defender for Office 365 for security threat assessment. This resource captures information when users click on URLs in emails and other content, tracking details such as the clicked URL, user information, verdict from Safe Links, timestamp, and device information. This data helps security teams monitor and investigate potential phishing or malicious link threats within their organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.threatIntelligenceUrlClickData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligenceUrlClickData"
}
```

