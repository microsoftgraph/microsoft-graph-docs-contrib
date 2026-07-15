---
title: "activityResourceDetails resource type"
description: "Contains details about the resource associated with an activity."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activityResourceDetails resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the resource associated with an [auditLog](../resources/security-casemanagement-auditlog.md). Returned in the **details** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|String|The resource kind, such as task or relation.|
|resourceId|String|The identifier of the resource associated with the activity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.activityResourceDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.activityResourceDetails",
  "resourceId": "String",
  "kind": "String"
}
```
