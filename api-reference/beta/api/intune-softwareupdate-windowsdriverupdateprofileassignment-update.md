---
title: "Update windowsDriverUpdateProfileAssignment"
description: "Update the properties of a windowsDriverUpdateProfileAssignment object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsDriverUpdateProfileAssignment

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object.

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
PATCH /deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/assignments/{windowsDriverUpdateProfileAssignmentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object.

The following table shows the properties that are required when you create the [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The Identifier of the entity|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target that the driver update profile is assigned to.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}/assignments/{windowsDriverUpdateProfileAssignmentId}
Content-type: application/json
Content-length: 343

{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfileAssignment",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 392

{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfileAssignment",
  "id": "951663d5-63d5-9516-d563-1695d5631695",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  }
}
```



