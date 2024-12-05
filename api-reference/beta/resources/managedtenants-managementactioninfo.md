---
title: "managementActionInfo resource type"
description: "Represents reference information for a management action."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managementActionInfo resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents reference information for a management action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managementActionId|String|The identifier for the management action. Required. Read-only.|
|managementTemplateId|String|The identifier for the management template. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managementActionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementActionInfo",
  "managementTemplateId": "String",
  "managementActionId": "String"
}
```
