---
title: "aipSensitivityLabelActionLogRequest resource type"
description: "Represents an audit record for Azure Information Protection (AIP) sensitivity label action log requests."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AIP sensitivity label action log request"
---
# aipSensitivityLabelActionLogRequest resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Azure Information Protection (AIP) sensitivity label action log requests. This resource captures information about sensitivity label actions performed on documents, including label application, modification, and removal.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aipSensitivityLabelActionLogRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aipSensitivityLabelActionLogRequest"
}
```

