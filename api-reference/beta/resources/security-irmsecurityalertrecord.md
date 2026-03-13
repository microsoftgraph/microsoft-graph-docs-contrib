---
title: "irmSecurityAlertRecord resource type"
description: "Represents an audit record that captures Information Rights Management (IRM) security alerts."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "IRM security alert record"
---
# irmSecurityAlertRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Information Rights Management (IRM) security alerts. This record type documents security events related to protected content, including unauthorized access attempts, policy violations, and suspicious activities involving IRM-protected documents. These audit records help organizations monitor the security of their protected content and detect potential data leakage or rights management bypasses.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.irmSecurityAlertRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.irmSecurityAlertRecord"
}
```

