---
title: "Update windowsDriverUpdateProfile"
description: "Update the properties of a windowsDriverUpdateProfile object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsDriverUpdateProfile

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.

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
PATCH /deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.

The following table shows the properties that are required when you create the [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The Intune policy id.|
|displayName|String|The display name for the profile.|
|description|String|The description of the profile which is specified by the user.|
|approvalType|[driverUpdateProfileApprovalType](../resources/intune-softwareupdate-driverupdateprofileapprovaltype.md)|Driver update profile approval type. For example, manual or automatic approval. Possible values are: `manual`, `automatic`.|
|deviceReporting|Int32|Number of devices reporting for this profile|
|newUpdates|Int32|Number of new driver updates available for this profile.|
|deploymentDeferralInDays|Int32|Deployment deferral settings in days, only applicable when ApprovalType is set to automatic approval.|
|createdDateTime|DateTimeOffset|The date time that the profile was created.|
|lastModifiedDateTime|DateTimeOffset|The date time that the profile was last modified.|
|roleScopeTagIds|String collection|List of Scope Tags for this Driver Update entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}
Content-type: application/json
Content-length: 322

{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfile",
  "displayName": "Display Name value",
  "description": "Description value",
  "approvalType": "automatic",
  "deviceReporting": 15,
  "newUpdates": 10,
  "deploymentDeferralInDays": 8,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 494

{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfile",
  "id": "55bcc52a-c52a-55bc-2ac5-bc552ac5bc55",
  "displayName": "Display Name value",
  "description": "Description value",
  "approvalType": "automatic",
  "deviceReporting": 15,
  "newUpdates": 10,
  "deploymentDeferralInDays": 8,
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```



