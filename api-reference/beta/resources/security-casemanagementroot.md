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

|Context|Example|
|:---|:---|
|URL cast segment|`.../cases/microsoft.graph.security.caseManagement.incidentCase`|
|JSON body discriminator|`"@odata.type": "#microsoft.graph.security.caseManagement.incidentCase"`|

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|caseTypeConfigurations|[microsoft.graph.security.caseManagement.caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) collection|The collection of case type configurations that define the statuses and custom fields available for each case type. Read-only. Supports `$select`, `$count`, and `$expand` of the `statuses` and `customFields` relationships.|
|cases|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) collection|The collection of security cases managed through the case management entry point. Supports `$filter`, `$orderby`, `$select`, `$top`, and `$skip`.|

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
