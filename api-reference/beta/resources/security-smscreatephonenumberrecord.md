---
title: "smsCreatePhoneNumberRecord resource type"
description: "Represents an audit record for SMS phone number creation activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SMS create phone number record"
---
# smsCreatePhoneNumberRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures SMS phone number creation activities. This resource tracks events where phone numbers are registered or provisioned for SMS messaging within Microsoft services, such as for multi-factor authentication, notifications, or alerts. These audit records help organizations monitor the configuration of SMS communication channels for security and authentication purposes, providing visibility into when and how phone numbers are being registered.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.smsCreatePhoneNumberRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.smsCreatePhoneNumberRecord"
}
```

