---
title: "caseManagementRoot resource type"
description: "Represents the entry point for Microsoft Graph security case management APIs."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# caseManagementRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for Microsoft Graph security case management APIs. Use this resource to access cases that organize security investigations, related work, activities, and evidence.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cases|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) collection|The collection of security cases managed through the case management entry point. Supports `$filter`, `$orderby`, `$select`, `$top`, `$skip`, and `$count`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagementRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagementRoot"
}
```
