---
title: "deleteCertificateRecord resource type"
description: "Represents an audit record that captures certificate deletion operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Delete certificate record"
---
# deleteCertificateRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures certificate deletion operations. This record type documents when a security certificate is deleted from a system, including information about who deleted the certificate, when it was deleted, and details about the certificate itself. This helps organizations track certificate lifecycle management and ensure proper security credential handling.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.deleteCertificateRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.deleteCertificateRecord"
}
```

