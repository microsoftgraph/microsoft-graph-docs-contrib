---
title: "powerPlatformLockboxResourceCommandAuditRecord resource type"
description: "Represents an audit record that captures information about commands executed during approved Customer Lockbox sessions in Power Platform."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform lockbox resource command audit record"
---
# powerPlatformLockboxResourceCommandAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about commands executed during approved Customer Lockbox sessions in Power Platform. This resource provides detailed logging of the specific actions taken by Microsoft support engineers when they access customer data in Power Platform services through the Customer Lockbox process. These audit records enable organizations to review exactly what operations were performed during authorized access sessions, supporting security monitoring and compliance requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformLockboxResourceCommandAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformLockboxResourceCommandAuditRecord"
}
```

