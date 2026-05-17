---
title: "customerKeyServiceEncryptionAuditRecord resource type"
description: "Represents an audit record for customer key service encryption operations in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Customer key service encryption audit record"
---
# customerKeyServiceEncryptionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for customer key service encryption operations in Microsoft 365. This resource captures audit information related to customer-managed encryption key operations, including key creation, rotation, and usage in service encryption scenarios. It provides visibility into encryption key management activities for compliance and security monitoring.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.customerKeyServiceEncryptionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.customerKeyServiceEncryptionAuditRecord"
}
```

