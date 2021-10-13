---
title: "Update windowsDriverUpdateInventory"
description: "Update the properties of a windowsDriverUpdateInventory object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsDriverUpdateInventory

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/driverInventories/{windowsDriverUpdateInventoryId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object.

The following table shows the properties that are required when you create the [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The id of the driver.|
|name|String|The name of the driver.|
|version|String|The version of the driver.|
|manufacturer|String|The manufacturer of the driver.|
|releaseDateTime|DateTimeOffset|The release date time of the driver.|
|driverClass|String|The class of the driver.|
|applicableDeviceCount|Int32|The number of devices for which this driver is applicable.|
|approvalStatus|[driverApprovalStatus](../resources/intune-softwareupdate-driverapprovalstatus.md)|The approval status for this driver. Possible values are: `needsReview`, `declined`, `approved`, `suspended`.|
|category|[driverCategory](../resources/intune-softwareupdate-drivercategory.md)|The category for this driver. Possible values are: `recommended`, `previouslyApproved`, `other`.|
|deployDateTime|DateTimeOffset|The date time when a driver should be deployed if approvalStatus is approved.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/driverInventories/{windowsDriverUpdateInventoryId}
Content-type: application/json
Content-length: 425

{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateInventory",
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
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 474

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
```



