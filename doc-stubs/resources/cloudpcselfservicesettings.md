---
title: "cloudPcSelfServiceSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcSelfServiceSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List selfServiceSettings](../api/virtualendpoint-list-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) collection|Get the cloudPcSelfServiceSettings resources from the selfServiceSettings navigation property.|
|[Create selfServiceSettings](../api/virtualendpoint-post-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Create a new cloudPcSelfServiceSettings object.|
|[Update selfServiceSettings](../api/virtualendpoint-update-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a selfServiceSettings object.|
|[Get selfServiceSettings](../api/virtualendpoint-get-cloudpcselfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Delete selfServiceSettings](../api/virtualendpoint-delete-selfservicesettings.md)|None|Delete a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[List cloudPcSelfServiceSettings](../api/cloudpcselfservicesettings-list.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) collection|Get a list of the [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) objects and their properties.|
|[Create cloudPcSelfServiceSettings](../api/cloudpcselfservicesettings-create.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Create a new [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Get cloudPcSelfServiceSettings](../api/cloudpcselfservicesettings-get.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Update cloudPcSelfServiceSettings](../api/cloudpcselfservicesettings-update.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Delete cloudPcSelfServiceSettings](../api/cloudpcselfservicesettings-delete.md)|None|Deletes a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md) collection|**TODO: Add Description**|
|enabled|Boolean|**TODO: Add Description**|
|groups|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSelfServiceSettings",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "id": "String (identifier)",
  "enabled": "Boolean",
  "groups": [
    "String"
  ],
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
    }
  ]
}
```

