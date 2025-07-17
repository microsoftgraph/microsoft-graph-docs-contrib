---
title: "managementAction resource type"
description: "Represents a baseline management action for a given managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managementAction resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a baseline management action for a given managed tenant. Examples of management actions are device encryption, perform configurations to allow Microsoft Entra device enrollment, and require multi-factor authentication for admins.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List management action](../api/managedtenants-managedtenant-list-managementactions.md)|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md) collection|Get a list of the [managementAction](../resources/managedtenants-managementaction.md) objects and their properties.|
|[Get management action](../api/managedtenants-managementaction-get.md)|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md)|Read the properties and relationships of a [managementAction](../resources/managedtenants-managementaction.md) object.|
|[Apply management action](../api/managedtenants-managementaction-apply.md)|[microsoft.graph.managedTenants.managementActionDeploymentStatus](../resources/managedtenants-managementactiondeploymentstatus.md)|Applies the management actions against the managed tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|managementCategory|The category for the management action. Possible values are: `custom`, `devices`, `identity`, `unknownFutureValue`. Optional. Read-only.|
|description|String|The description for the management action. Optional. Read-only.|
|displayName|String|The display name for the management action. Optional. Read-only.|
|id|String|The unique identifier for the management action. Required. Read-only.|
|referenceTemplateId|String|The reference for the management template used to generate the management action. Required. Read-only.|
|workloadActions|[microsoft.graph.managedTenants.workloadAction](../resources/managedtenants-workloadaction.md) collection|The collection of workload actions associated with the management action. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managementAction",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementAction",
  "id": "String (identifier)",
  "referenceTemplateId": "String",
  "displayName": "String",
  "description": "String",
  "category": "String",
  "workloadActions": [
    {
      "@odata.type": "microsoft.graph.managedTenants.workloadAction"
    }
  ]
}
```
