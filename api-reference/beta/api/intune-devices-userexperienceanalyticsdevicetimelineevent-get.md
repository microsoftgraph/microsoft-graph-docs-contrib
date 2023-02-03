---
title: "Get userExperienceAnalyticsDeviceTimelineEvent"
description: "Read properties and relationships of the userExperienceAnalyticsDeviceTimelineEvent object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get userExperienceAnalyticsDeviceTimelineEvent

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/userExperienceAnalyticsDeviceTimelineEvent/{userExperienceAnalyticsDeviceTimelineEventId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsDeviceTimelineEvent/{userExperienceAnalyticsDeviceTimelineEventId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 405

{
  "value": {
    "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceTimelineEvent",
    "id": "beed65bb-65bb-beed-bb65-edbebb65edbe",
    "deviceId": "Device Id value",
    "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
    "eventLevel": "verbose",
    "eventSource": "Event Source value",
    "eventName": "Event Name value",
    "eventDetails": "Event Details value"
  }
}
```
