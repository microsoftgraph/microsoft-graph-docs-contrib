---
title: "skypeForBusinessUsersBlockedAuditRecord resource type"
description: "Represents an audit record for user blocking events in Skype for Business."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Skype for Business users blocked audit record"
---
# skypeForBusinessUsersBlockedAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures user blocking events in Skype for Business. This resource tracks instances where users are blocked from using Skype for Business services, either through administrative action or security policy enforcement. These audit records help organizations monitor user access restrictions for security and compliance purposes, providing visibility into account blocking patterns and potential security incidents.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.skypeForBusinessUsersBlockedAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.skypeForBusinessUsersBlockedAuditRecord"
}
```

