---
title: "aipProtectionActionLogRequest resource type"
description: "Represents an audit record for Azure Information Protection (AIP) protection action log requests."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIP protection action log request"
---
# aipProtectionActionLogRequest resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Information Protection (AIP) protection action log requests. This resource captures information about protection actions applied to documents, including encryption, rights management, and label application.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aipProtectionActionLogRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aipProtectionActionLogRequest"
}
```

