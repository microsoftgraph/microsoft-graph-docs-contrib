---
title: "managementIntent resource type"
description: "Represents metadata for a baseline and what management templates are included."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managementIntent resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a baseline and what management templates are included.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List management intents](../api/managedtenants-managedtenant-list-managementintents.md)|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md) collection|Get a list of the [managementIntent](../resources/managedtenants-managementintent.md) objects and their properties.|
|[Get management intent](../api/managedtenants-managementintent-get.md)|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md)|Read the properties and relationships of a [managementIntent](../resources/managedtenants-managementintent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the management intent. Optional. Read-only.|
|id|String|The unique identifier for the management intent. Required. Read-only.|
|isGlobal|Boolean|A flag indicating whether the management intent is global. Required. Read-only.|
|managementTemplates|[microsoft.graph.managedTenants.managementTemplateDetailedInfo](../resources/managedtenants-managementtemplatedetailedinfo.md) collection|The collection of management templates associated with the management intent. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managementIntent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementIntent",
  "id": "String (identifier)",
  "displayName": "String",
  "isGlobal": "Boolean",
  "managementTemplates": [
    {
      "@odata.type": "microsoft.graph.managedTenants.managementTemplateDetailedInfo"
    }
  ]
}
```
