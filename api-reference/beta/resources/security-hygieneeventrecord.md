---
title: "hygieneEventRecord resource type"
description: "Represents an audit record that captures email hygiene events in Exchange Online Protection or Microsoft Defender for Office 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Hygiene event record"
---
# hygieneEventRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures email hygiene events in Exchange Online Protection or Microsoft Defender for Office 365. This record type documents email filtering activities, such as spam detection, malware identification, phishing attempts, and other email security events. The audit information includes details about the message, the sender, the recipient, the detected threat, and the action taken. These records help organizations track email security operations and troubleshoot email delivery issues.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hygieneEventRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hygieneEventRecord"
}
```

