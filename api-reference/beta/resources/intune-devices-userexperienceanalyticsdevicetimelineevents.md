---
title: "userExperienceAnalyticsDeviceTimelineEvents resource type"
description: "The user experience analytics device events entity contains NRT device events details."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsDeviceTimelineEvents resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
|eventLevel|[deviceEventLevel](../resources/intune-devices-deviceeventlevel.md)|The severity level of the event enum. The possible values are: `none`, `verbose`, `information`, `warning`, `error` ,`critical`. Default value: `none`. The possible values are: `none`, `verbose`, `information`, `warning`, `error`, `critical`, `unknownFutureValue`.|
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