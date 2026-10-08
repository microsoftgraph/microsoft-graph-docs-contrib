---
title: "threatIntelligenceAtpContentData resource type"
description: "Represents threat intelligence data related to content analyzed by Microsoft Defender for Office 365 (formerly ATP)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Threat intelligence ATP content data"
---
# threatIntelligenceAtpContentData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat intelligence data related to content analyzed by Microsoft Defender for Office 365 (formerly ATP). This resource contains detailed information about potential threats detected in content such as email attachments, files, and links, including malware detection results, file metadata, threat verdicts, and other security-related indicators that help organizations identify and mitigate security risks.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.threatIntelligenceAtpContentData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligenceAtpContentData"
}
```

