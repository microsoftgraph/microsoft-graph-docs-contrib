---
title: "informationWorkerProtectionAuditRecord resource type"
description: "Represents an audit record that captures security events related to information worker protection."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Information worker protection audit record"
---
# informationWorkerProtectionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures security events related to information worker protection. This record type documents activities and operations that affect the security of knowledge workers, including security policy application, threat detection, and protective actions. It helps organizations track how information workers are being protected from security threats such as phishing, malware, account compromise, and data exfiltration attempts.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.informationWorkerProtectionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationWorkerProtectionAuditRecord"
}
```

