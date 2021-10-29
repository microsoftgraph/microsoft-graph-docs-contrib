---
title: "teamworkSystemConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkSystemConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTimeConfiguration|[teamworkDateTimeConfiguration](../resources/teamworkdatetimeconfiguration.md)|**TODO: Add Description**|
|defaultPassword|String|**TODO: Add Description**|
|deviceLockTimeout|Duration|**TODO: Add Description**|
|isDeviceLockEnabled|Boolean|**TODO: Add Description**|
|isLoggingEnabled|Boolean|**TODO: Add Description**|
|isPowerSavingEnabled|Boolean|**TODO: Add Description**|
|isScreenCaptureEnabled|Boolean|**TODO: Add Description**|
|isSilentModeEnabled|Boolean|**TODO: Add Description**|
|language|String|**TODO: Add Description**|
|lockPin|String|**TODO: Add Description**|
|loggingLevel|String|**TODO: Add Description**|
|networkConfiguration|[teamworkNetworkConfiguration](../resources/teamworknetworkconfiguration.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSystemConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSystemConfiguration",
  "networkConfiguration": {
    "@odata.type": "microsoft.graph.teamworkNetworkConfiguration"
  },
  "dateTimeConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDateTimeConfiguration"
  },
  "isLoggingEnabled": "Boolean",
  "loggingLevel": "String",
  "defaultPassword": "String",
  "isScreenCaptureEnabled": "Boolean",
  "isDeviceLockEnabled": "Boolean",
  "deviceLockTimeout": "String (duration)",
  "lockPin": "String",
  "isSilentModeEnabled": "Boolean",
  "isPowerSavingEnabled": "Boolean",
  "language": "String"
}
```

