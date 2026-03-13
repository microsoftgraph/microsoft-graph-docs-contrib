---
title: "msticNationStateNotificationRecord resource type"
description: "Represents an audit record that captures information about nation-state threat actor notifications from Microsoft Threat Intelligence Center."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MSTIC nation state notification record"
---
# msticNationStateNotificationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about nation-state threat actor notifications from Microsoft Threat Intelligence Center (MSTIC). This resource provides details about notifications sent to organizations when Microsoft detects that they may have been targeted or compromised by nation-state actors. These audit records help organizations track when they received such notifications, understand the nature of the potential threats, and maintain a record of high-severity security incident communications.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.msticNationStateNotificationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.msticNationStateNotificationRecord"
}
```

