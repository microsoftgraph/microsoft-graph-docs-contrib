---
title: "lifecycleManagementSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# lifecycleManagementSettings resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lifecycleManagementSettings](../api/identitygovernance-lifecycleworkflowscontainer-list-settings.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) collection|Get a list of the [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) objects and their properties.|
|[Create lifecycleManagementSettings](../api/identitygovernance-lifecycleworkflowscontainer-post-settings.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Create a new [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|
|[Get lifecycleManagementSettings](../api/identitygovernance-lifecyclemanagementsettings-get.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Read the properties and relationships of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|
|[Update lifecycleManagementSettings](../api/identitygovernance-lifecyclemanagementsettings-update.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Update the properties of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|
|[Delete lifecycleManagementSettings](../api/identitygovernance-lifecycleworkflowscontainer-delete-settings.md)|None|Deletes a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|workflowScheduleIntervalInHours|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "id": "String (identifier)",
  "workflowScheduleIntervalInHours": "Integer"
}
```

