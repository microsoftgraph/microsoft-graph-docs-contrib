---
title: "azureActiveDirectoryAccountLogonAuditRecord resource type"
description: "Represents an audit record for Microsoft Entra ID account logon events."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Entra ID account logon audit record"
---
# azureActiveDirectoryAccountLogonAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft Entra ID account logon events. This resource captures information about user authentication activities, including sign-in attempts, authentication methods used, and logon outcomes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.azureActiveDirectoryAccountLogonAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.azureActiveDirectoryAccountLogonAuditRecord"
}
```

