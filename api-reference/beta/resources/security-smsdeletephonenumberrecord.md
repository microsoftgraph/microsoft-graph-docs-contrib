---
title: "smsDeletePhoneNumberRecord resource type"
description: "Represents an audit record for SMS phone number deletion activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SMS delete phone number record"
---
# smsDeletePhoneNumberRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures SMS phone number deletion activities. This resource tracks events where phone numbers are removed or deregistered from SMS messaging services within Microsoft services, such as those used for multi-factor authentication, notifications, or alerts. These audit records help organizations monitor changes to their SMS communication channels for security and authentication purposes, providing visibility into when and why phone numbers are being removed.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.smsDeletePhoneNumberRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.smsDeletePhoneNumberRecord"
}
```

