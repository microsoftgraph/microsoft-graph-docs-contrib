---
title: "List windowsDriverUpdateInventories"
description: "List properties and relationships of the windowsDriverUpdateInventory objects."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# List windowsDriverUpdateInventories

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/driverInventories
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/driverInventories
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 551

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsDriverUpdateInventory",
      "id": "3b14b403-b403-3b14-03b4-143b03b4143b",
      "name": "Name value",
      "version": "Version value",
      "manufacturer": "Manufacturer value",
      "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
      "driverClass": "Driver Class value",
      "applicableDeviceCount": 5,
      "approvalStatus": "declined",
      "category": "previouslyApproved",
      "deployDateTime": "2017-01-01T00:01:14.7822152-08:00"
    }
  ]
}
```



