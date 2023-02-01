---
title: "userExperienceAnalyticsDeviceTimelineEvents resource type"
description: "The user experience analytics device events entity contains NRT device events details."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceTimelineEvents resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device events entity contains NRT device events details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceTimelineEventses](../api/intune-devices-userexperienceanalyticsdevicetimelineevents-list.md)|[userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md) objects.|
|[Get userExperienceAnalyticsDeviceTimelineEvents](../api/intune-devices-userexperienceanalyticsdevicetimelineevents-get.md)|[userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md) object.|
|[Create userExperienceAnalyticsDeviceTimelineEvents](../api/intune-devices-userexperienceanalyticsdevicetimelineevents-create.md)|[userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md)|Create a new [userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md) object.|
|[Delete userExperienceAnalyticsDeviceTimelineEvents](../api/intune-devices-userexperienceanalyticsdevicetimelineevents-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md).|
|[Update userExperienceAnalyticsDeviceTimelineEvents](../api/intune-devices-userexperienceanalyticsdevicetimelineevents-update.md)|[userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md)|Update the properties of a [userExperienceAnalyticsDeviceTimelineEvents](../resources/intune-devices-userexperienceanalyticsdevicetimelineevents.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics NRT device timeline events object.|
|deviceId|String|The id of the device where the event occurred.|
|eventDateTime|DateTimeOffset|The time the event occured.|
|eventLevel|[deviceEventLevel](../resources/intune-devices-deviceeventlevel.md)|The severity level of the event enum. Possible values are: `none`, `verbose`, `information`, `warning`, `error` ,`critical`. Default value: `none`. Possible values are: `none`, `verbose`, `information`, `warning`, `error`, `critical`, `unknownFutureValue`.|
|eventSource|String|The source of the event. Examples include: Intune, Sccm.|
|eventName|String|The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.|
|eventDetails|String|The details provided by the event, format depends on event type.|
|eventAdditionalInformation|String|Placeholder value for future expansion.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceTimelineEvents"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceTimelineEvents",
  "id": "String (identifier)",
  "deviceId": "String",
  "eventDateTime": "String (timestamp)",
  "eventLevel": "String",
  "eventSource": "String",
  "eventName": "String",
  "eventDetails": "String",
  "eventAdditionalInformation": "String"
}
```
