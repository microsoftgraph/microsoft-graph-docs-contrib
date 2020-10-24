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
|[Get selfServiceSettings](../api/virtualendpoint-get-cloudpcselfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Update selfServiceSettings](../api/virtualendpoint-update-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a selfServiceSettings object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The id of self-service setting, which is the AAD tenant id|
|enabled|Boolean|Whether self service is allowed at the tenant level. Boolean values can be "true" or "false"|
|assignments|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md) collection|AAD user groups that are allowed to perform self-service if tenant level self service is enabled. Only Security Groups or Office 365 Groups are supported.|

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
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
    }
  ]
}
```
