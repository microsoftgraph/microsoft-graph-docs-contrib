---
title: "Create windowsAutopilotDeviceIdentity"
description: "Create a new windowsAutopilotDeviceIdentity object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create windowsAutopilotDeviceIdentity

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) object.

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
POST /deviceManagement/windowsAutopilotDeviceIdentities
POST /deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}/deploymentProfile/assignedDevices
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windowsAutopilotDeviceIdentity object.

The following table shows the properties that are required when you create the windowsAutopilotDeviceIdentity.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|deploymentProfileAssignmentStatus|[windowsAutopilotProfileAssignmentStatus](../resources/intune-enrollment-windowsautopilotprofileassignmentstatus.md)|Profile assignment status of the Windows autopilot device. Possible values are: `unknown`, `assignedInSync`, `assignedOutOfSync`, `assignedUnkownSyncState`, `notAssigned`, `pending`, `failed`.|
|deploymentProfileAssignmentDetailedStatus|[windowsAutopilotProfileAssignmentDetailedStatus](../resources/intune-enrollment-windowsautopilotprofileassignmentdetailedstatus.md)|Profile assignment detailed status of the Windows autopilot device. Possible values are: `none`, `hardwareRequirementsNotMet`, `surfaceHubProfileNotSupported`, `holoLensProfileNotSupported`, `windowsPcProfileNotSupported`, `surfaceHub2SProfileNotSupported`, `unknownFutureValue`.|
|deploymentProfileAssignedDateTime|DateTimeOffset|Profile set time of the Windows autopilot device.|
|groupTag|String|Group Tag of the Windows autopilot device.|
|purchaseOrderIdentifier|String|Purchase Order Identifier of the Windows autopilot device.|
|serialNumber|String|Serial number of the Windows autopilot device.|
|productKey|String|Product Key of the Windows autopilot device.|
|manufacturer|String|Oem manufacturer of the Windows autopilot device.|
|model|String|Model name of the Windows autopilot device.|
|enrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|Intune enrollment state of the Windows autopilot device. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|
|lastContactedDateTime|DateTimeOffset|Intune Last Contacted Date Time of the Windows autopilot device.|
|addressableUserName|String|Addressable user name.|
|userPrincipalName|String|User Principal Name.|
|resourceName|String|Resource Name.|
|skuNumber|String|SKU Number|
|systemFamily|String|System Family|
|azureActiveDirectoryDeviceId|String|AAD Device ID - to be deprecated|
|azureAdDeviceId|String|AAD Device ID|
|managedDeviceId|String|Managed Device ID|
|displayName|String|Display Name|
|deviceAccountUpn|String|Surface Hub Device Account Upn|
|deviceAccountPassword|String|Surface Hub Device Account Password|
|deviceFriendlyName|String|Surface Hub Device Friendly Name|
|remediationState|[windowsAutopilotDeviceRemediationState](../resources/intune-enrollment-windowsautopilotdeviceremediationstate.md)|Device Remediation State. Possible values are: `unknown`, `noRemediationRequired`, `automaticRemediationRequired`, `manualRemediationRequired`, `unknownFutureValue`.|
|remediationStateLastModifiedDateTime|DateTimeOffset|RemediationState set time of Autopilot device.|
|userlessEnrollmentStatus|[windowsAutopilotUserlessEnrollmentStatus](../resources/intune-enrollment-windowsautopilotuserlessenrollmentstatus.md)|Enrollment status for userless enrollments. Possible values are: `unknown`, `allowed`, `blocked`, `unknownFutureValue`.|



## Response
If successful, this method returns a `201 Created` response code and a [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/windowsAutopilotDeviceIdentities
Content-type: application/json
Content-length: 1413

{
  "@odata.type": "#microsoft.graph.windowsAutopilotDeviceIdentity",
  "deploymentProfileAssignmentStatus": "assignedInSync",
  "deploymentProfileAssignmentDetailedStatus": "hardwareRequirementsNotMet",
  "deploymentProfileAssignedDateTime": "2016-12-31T23:58:26.2447023-08:00",
  "groupTag": "Group Tag value",
  "purchaseOrderIdentifier": "Purchase Order Identifier value",
  "serialNumber": "Serial Number value",
  "productKey": "Product Key value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "enrollmentState": "enrolled",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "addressableUserName": "Addressable User Name value",
  "userPrincipalName": "User Principal Name value",
  "resourceName": "Resource Name value",
  "skuNumber": "Sku Number value",
  "systemFamily": "System Family value",
  "azureActiveDirectoryDeviceId": "Azure Active Directory Device Id value",
  "azureAdDeviceId": "Azure Ad Device Id value",
  "managedDeviceId": "Managed Device Id value",
  "displayName": "Display Name value",
  "deviceAccountUpn": "Device Account Upn value",
  "deviceAccountPassword": "Device Account Password value",
  "deviceFriendlyName": "Device Friendly Name value",
  "remediationState": "noRemediationRequired",
  "remediationStateLastModifiedDateTime": "2017-01-01T00:00:10.730021-08:00",
  "userlessEnrollmentStatus": "allowed"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1462

{
  "@odata.type": "#microsoft.graph.windowsAutopilotDeviceIdentity",
  "id": "fac6f0b1-f0b1-fac6-b1f0-c6fab1f0c6fa",
  "deploymentProfileAssignmentStatus": "assignedInSync",
  "deploymentProfileAssignmentDetailedStatus": "hardwareRequirementsNotMet",
  "deploymentProfileAssignedDateTime": "2016-12-31T23:58:26.2447023-08:00",
  "groupTag": "Group Tag value",
  "purchaseOrderIdentifier": "Purchase Order Identifier value",
  "serialNumber": "Serial Number value",
  "productKey": "Product Key value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "enrollmentState": "enrolled",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "addressableUserName": "Addressable User Name value",
  "userPrincipalName": "User Principal Name value",
  "resourceName": "Resource Name value",
  "skuNumber": "Sku Number value",
  "systemFamily": "System Family value",
  "azureActiveDirectoryDeviceId": "Azure Active Directory Device Id value",
  "azureAdDeviceId": "Azure Ad Device Id value",
  "managedDeviceId": "Managed Device Id value",
  "displayName": "Display Name value",
  "deviceAccountUpn": "Device Account Upn value",
  "deviceAccountPassword": "Device Account Password value",
  "deviceFriendlyName": "Device Friendly Name value",
  "remediationState": "noRemediationRequired",
  "remediationStateLastModifiedDateTime": "2017-01-01T00:00:10.730021-08:00",
  "userlessEnrollmentStatus": "allowed"
}
```