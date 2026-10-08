---
title: "mipExactDataMatchAuditRecord resource type"
description: "Represents an audit record that captures information about Exact Data Match (EDM) operations in Microsoft Information Protection."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP exact data match audit record"
---
# mipExactDataMatchAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Exact Data Match (EDM) operations in Microsoft Information Protection. EDM is a classification method that helps detect sensitive information in content by comparing it with pre-defined sensitive data sets. This record type contains details about EDM-related activities, such as schema creation, modification, data set uploads, and matches detected during content scanning.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipExactDataMatchAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipExactDataMatchAuditRecord"
}
```

