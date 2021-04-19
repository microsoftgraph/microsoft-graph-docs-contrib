---
title: "userExperienceAnalyticsNotAutopilotReadyDevice resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userExperienceAnalyticsNotAutopilotReadyDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsNotAutopilotReadyDevices](../api/intune-userexperienceanalyticsnotautopilotreadydevice-list.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md) collection|Get a list of the [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/userexperienceanalyticsnotautopilotreadydevice.md) objects and their properties.|
|[Create userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-userexperienceanalyticsnotautopilotreadydevice-create.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md)|Create a new [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md) object.|
|[Get userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-userexperienceanalyticsnotautopilotreadydevice-get.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md)|Read the properties and relationships of a [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md) object.|
|[Update userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-userexperienceanalyticsnotautopilotreadydevice-update.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md)|Update the properties of a [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md) object.|
|[Delete userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-userexperienceanalyticsnotautopilotreadydevice-delete.md)|None|Deletes a [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-userexperienceanalyticsnotautopilotreadydevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autoPilotProfileAssigned|Boolean|**TODO: Add Description**|
|autoPilotRegistered|Boolean|**TODO: Add Description**|
|azureAdJoinType|String|**TODO: Add Description**|
|azureAdRegistered|azureAdRegisteredState|**TODO: Add Description**. Possible values are: `no`, `yes`, `unknown`.|
|deviceName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|managedBy|String|**TODO: Add Description**|
|manufacturer|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|serialNumber|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsNotAutopilotReadyDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsNotAutopilotReadyDevice",
  "id": "String (identifier)",
  "deviceName": "String",
  "serialNumber": "String",
  "manufacturer": "String",
  "model": "String",
  "managedBy": "String",
  "autoPilotRegistered": "Boolean",
  "autoPilotProfileAssigned": "Boolean",
  "azureAdRegistered": "String",
  "azureAdJoinType": "String"
}
```

