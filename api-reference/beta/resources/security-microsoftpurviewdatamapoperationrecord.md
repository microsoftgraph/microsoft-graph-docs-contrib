---
title: "microsoftPurviewDataMapOperationRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Purview Data Map operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview data map operation record"
---
# microsoftPurviewDataMapOperationRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Purview Data Map operations. This record type documents events such as data source registration, data scanning, metadata extraction, classification, and catalog updates within the Purview Data Map, providing visibility into data discovery and mapping activities across the organization's data estate.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftPurviewDataMapOperationRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftPurviewDataMapOperationRecord"
}
```

