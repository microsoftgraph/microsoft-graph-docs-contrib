---
title: "Get windowsDriverUpdateProfile"
description: "Read properties and relationships of the windowsDriverUpdateProfile object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Get windowsDriverUpdateProfile

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
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
GET /deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/windowsDriverUpdateProfiles/{windowsDriverUpdateProfileId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 782

{
  "value": {
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
    ],
    "inventorySyncStatus": {
      "@odata.type": "microsoft.graph.windowsDriverUpdateProfileInventorySyncStatus",
      "lastSuccessfulSyncDateTime": "2017-01-01T00:03:28.120883-08:00",
      "driverInventorySyncState": "success"
    }
  }
}
```