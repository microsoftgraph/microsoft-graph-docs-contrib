---
title: "userExperienceAnalyticsDeviceTimelineEvent resource type"
description: "The user experience analytics device event entity contains NRT device event details."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceTimelineEvent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device event entity contains NRT device event details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceTimelineEvents](../api/intune-devices-userexperienceanalyticsdevicetimelineevent-list.md)|[userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) objects.|
|[Get userExperienceAnalyticsDeviceTimelineEvent](../api/intune-devices-userexperienceanalyticsdevicetimelineevent-get.md)|[userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.|
|[Create userExperienceAnalyticsDeviceTimelineEvent](../api/intune-devices-userexperienceanalyticsdevicetimelineevent-create.md)|[userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md)|Create a new [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.|
|[Delete userExperienceAnalyticsDeviceTimelineEvent](../api/intune-devices-userexperienceanalyticsdevicetimelineevent-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md).|
|[Update userExperienceAnalyticsDeviceTimelineEvent](../api/intune-devices-userexperienceanalyticsdevicetimelineevent-update.md)|[userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md)|Update the properties of a [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics NRT device timeline event object.|
|deviceId|String|The id of the device where the event occurred.|
|eventDateTime|DateTimeOffset|The time the event occured.|
|eventLevel|[deviceEventLevel](../resources/intune-devices-deviceeventlevel.md)|The severity level of the event enum. Possible values are: none, verbose, information, warning, error ,critical. Default value: none. Possible values are: `none`, `verbose`, `information`, `warning`, `error`, `critical`, `unknownFutureValue`.|
|eventSource|String|The source of the event. Examples include: Intune, Sccm.|
|eventName|String|The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.|
|eventDetails|String|The details provided by the event, format depends on event type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceTimelineEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceTimelineEvent",
  "id": "String (identifier)",
  "deviceId": "String",
  "eventDateTime": "String (timestamp)",
  "eventLevel": "String",
  "eventSource": "String",
  "eventName": "String",
  "eventDetails": "String"
}
```
