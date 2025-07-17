---
title: "managementTemplateDetailedInfo resource type"
description: "Represents detailed information for the management template."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managementTemplateDetailedInfo resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information for the management template.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|managementCategory|The management category for the management template. Possible values are: `custom`, `devices`, `identity`, `unknownFutureValue`. Required. Read-only.|
|displayName|String|The display name for the management template. Required. Read-only.|
|managementTemplateId|String|The unique identifier for the management template. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managementTemplateDetailedInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementTemplateDetailedInfo",
  "managementTemplateId": "String",
  "displayName": "String",
  "category": "String"
}
```
