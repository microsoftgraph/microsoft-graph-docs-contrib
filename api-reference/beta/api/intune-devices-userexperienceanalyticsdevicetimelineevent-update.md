---
title: "Update userExperienceAnalyticsDeviceTimelineEvent"
description: "Update the properties of a userExperienceAnalyticsDeviceTimelineEvent object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsDeviceTimelineEvent

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/userExperienceAnalyticsDeviceTimelineEvent/{userExperienceAnalyticsDeviceTimelineEventId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics NRT device timeline event object.|
|deviceId|String|The id of the device where the event occurred.|
|eventDateTime|DateTimeOffset|The time the event occured.|
|eventLevel|[deviceEventLevel](../resources/intune-devices-deviceeventlevel.md)|The severity level of the event enum. Possible values are: `none`, `verbose`, `information`, `warning`, `error` ,`critical`. Default value: `none`. Possible values are: `none`, `verbose`, `information`, `warning`, `error`, `critical`, `unknownFutureValue`.|
|eventSource|String|The source of the event. Examples include: Intune, Sccm.|
|eventName|String|The name of the event. Examples include: BootEvent, LogonEvent, AppCrashEvent, AppHangEvent.|
|eventDetails|String|The details provided by the event, format depends on event type.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsDeviceTimelineEvent/{userExperienceAnalyticsDeviceTimelineEventId}
Content-type: application/json
Content-length: 321

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceTimelineEvent",
  "deviceId": "Device Id value",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "eventLevel": "verbose",
  "eventSource": "Event Source value",
  "eventName": "Event Name value",
  "eventDetails": "Event Details value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 370

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceTimelineEvent",
  "id": "beed65bb-65bb-beed-bb65-edbebb65edbe",
  "deviceId": "Device Id value",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "eventLevel": "verbose",
  "eventSource": "Event Source value",
  "eventName": "Event Name value",
  "eventDetails": "Event Details value"
}
```
