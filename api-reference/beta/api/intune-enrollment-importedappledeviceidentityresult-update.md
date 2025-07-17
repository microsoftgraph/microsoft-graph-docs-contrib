---
title: "Update importedAppleDeviceIdentityResult"
description: "Update the properties of a importedAppleDeviceIdentityResult object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update importedAppleDeviceIdentityResult

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [importedAppleDeviceIdentityResult](../resources/intune-enrollment-importedappledeviceidentityresult.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/depOnboardingSettings/{depOnboardingSettingId}/importedAppleDeviceIdentities/{importedAppleDeviceIdentityId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [importedAppleDeviceIdentityResult](../resources/intune-enrollment-importedappledeviceidentityresult.md) object.

The following table shows the properties that are required when you create the [importedAppleDeviceIdentityResult](../resources/intune-enrollment-importedappledeviceidentityresult.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|serialNumber|String|Device serial number Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|requestedEnrollmentProfileId|String|Enrollment profile Id admin intends to apply to the device during next enrollment Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|requestedEnrollmentProfileAssignmentDateTime|DateTimeOffset|The time enrollment profile was assigned to the device Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|isSupervised|Boolean|Indicates if the Apple device is supervised.  Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|discoverySource|[discoverySource](../resources/intune-enrollment-discoverysource.md)|Apple device discovery source. Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md). Possible values are: `unknown`, `adminImport`, `deviceEnrollmentProgram`.|
|isDeleted|Boolean|Indicates if the device is deleted from Apple Business Manager Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|description|String|The description of the device Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md)|
|enrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|The state of the device in Intune Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md). Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|
|platform|[platform](../resources/intune-enrollment-platform.md)|The platform of the Device. Inherited from [importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md). Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`, `visionOS`, `tvos`, `unknownFutureValue`.|
|status|Boolean|Status of imported device identity|



## Response
If successful, this method returns a `200 OK` response code and an updated [importedAppleDeviceIdentityResult](../resources/intune-enrollment-importedappledeviceidentityresult.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/depOnboardingSettings/{depOnboardingSettingId}/importedAppleDeviceIdentities/{importedAppleDeviceIdentityId}
Content-type: application/json
Content-length: 544

{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentityResult",
  "serialNumber": "Serial Number value",
  "requestedEnrollmentProfileId": "Requested Enrollment Profile Id value",
  "requestedEnrollmentProfileAssignmentDateTime": "2017-01-01T00:02:32.8167841-08:00",
  "isSupervised": true,
  "discoverySource": "adminImport",
  "isDeleted": true,
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios",
  "status": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 652

{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentityResult",
  "id": "557cfb4a-fb4a-557c-4afb-7c554afb7c55",
  "serialNumber": "Serial Number value",
  "requestedEnrollmentProfileId": "Requested Enrollment Profile Id value",
  "requestedEnrollmentProfileAssignmentDateTime": "2017-01-01T00:02:32.8167841-08:00",
  "isSupervised": true,
  "discoverySource": "adminImport",
  "isDeleted": true,
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios",
  "status": true
}
```