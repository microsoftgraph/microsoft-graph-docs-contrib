---
title: "Create mobileAppTroubleshootingEvent"
description: "Create a new mobileAppTroubleshootingEvent object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create mobileAppTroubleshootingEvent

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [mobileAppTroubleshootingEvent](../resources/intune-devices-mobileapptroubleshootingevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/mobileAppTroubleshootingEvents
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the mobileAppTroubleshootingEvent object.

The following table shows the properties that are required when you create the mobileAppTroubleshootingEvent.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|



## Response
If successful, this method returns a `201 Created` response code and a [mobileAppTroubleshootingEvent](../resources/intune-devices-mobileapptroubleshootingevent.md) object in the response body.

## Example

### Request
Here is an example of the request.

<!-- { "blockType": "request" , "name" : "intune_devices_mobileapptroubleshootingevent_create_create_mobileapptroubleshootingevent" }-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/mobileAppTroubleshootingEvents
Content-type: application/json
Content-length: 71

{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.mobileAppTroubleshootingEvent" }-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 120

{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent",
  "id": "77943c10-3c10-7794-103c-9477103c9477"
}
```
