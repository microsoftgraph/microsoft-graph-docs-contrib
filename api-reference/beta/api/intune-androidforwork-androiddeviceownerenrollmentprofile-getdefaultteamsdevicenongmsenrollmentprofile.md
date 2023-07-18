---
title: "getDefaultTeamsDeviceNonGmsEnrollmentProfile action"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# getDefaultTeamsDeviceNonGmsEnrollmentProfile action

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

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
POST /deviceManagement/androidDeviceOwnerEnrollmentProfiles/getDefaultTeamsDeviceNonGmsEnrollmentProfile
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|enrollmentMode|[androidDeviceOwnerEnrollmentMode](../resources/intune-androidforwork-androiddeviceownerenrollmentmode.md)|Not yet documented|
|devicePublicKey|String|Not yet documented|
|userId|String|Not yet documented|



## Response
If successful, this action returns a `200 OK` response code and a [enrollmentProfileForNonGmsTeamsDevice](../resources/intune-androidforwork-enrollmentprofilefornongmsteamsdevice.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/androidDeviceOwnerEnrollmentProfiles/getDefaultTeamsDeviceNonGmsEnrollmentProfile

Content-type: application/json
Content-length: 133

{
  "enrollmentMode": "corporateOwnedFullyManaged",
  "devicePublicKey": "Device Public Key value",
  "userId": "User Id value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 505

{
  "value": {
    "@odata.type": "microsoft.graph.enrollmentProfileForNonGmsTeamsDevice",
    "accountId": "Account Id value",
    "profileId": "Profile Id value",
    "tokenExpirationDateTime": "2016-12-31T23:59:54.0590989-08:00",
    "encryptedProvisioningPackageExtras": {
      "@odata.type": "microsoft.graph.encryptedProvisioningPackageExtras",
      "encryptedData": "ZW5jcnlwdGVkRGF0YQ==",
      "encryptedSymmetricKey": "ZW5jcnlwdGVkU3ltbWV0cmljS2V5",
      "iv": "aXY="
    }
  }
}
```
