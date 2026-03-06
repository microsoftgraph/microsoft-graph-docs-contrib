---
title: "auditCoreRoot resource type"
description: "Represents the entry point for Microsoft Purview audit log queries and operations."
author: "diksha27"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
---
# auditCoreRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for Microsoft Purview audit log queries and operations. Use this resource to create and manage audit log queries that search across Microsoft 365 services, including Exchange, SharePoint, OneDrive, Microsoft Entra, and more.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|auditLogQueries|[microsoft.graph.security.auditLogQuery](../resources/security-auditlogquery.md) collection|A collection of audit log queries used to search and retrieve audit log records.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.auditCoreRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditCoreRoot"
}
```
