---
title: "Update comanagementEligibleDevice"
description: "Update the properties of a comanagementEligibleDevice object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update comanagementEligibleDevice

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [comanagementEligibleDevice](../resources/intune-devices-comanagementeligibledevice.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/comanagementEligibleDevices/{comanagementEligibleDeviceId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [comanagementEligibleDevice](../resources/intune-devices-comanagementeligibledevice.md) object.

The following table shows the properties that are required when you create the [comanagementEligibleDevice](../resources/intune-devices-comanagementeligibledevice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Id for the device|
|deviceName|String|DeviceName|
|deviceType|[deviceType](../resources/intune-devices-devicetype.md)|DeviceType. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `visionOS`, `tvOS`, `blackberry`, `palm`, `unknown`, `cloudPC`.|
|clientRegistrationStatus|[deviceRegistrationState](../resources/intune-devices-deviceregistrationstate.md)|ClientRegistrationStatus. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|ownerType|[ownerType](../resources/intune-shared-ownertype.md)|OwnerType. Possible values are: `unknown`, `company`, `personal`.|
|managementAgents|[managementAgentType](../resources/intune-devices-managementagenttype.md)|ManagementAgents. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `msSense`, `intuneAosp`, `google`, `unknownFutureValue`.|
|managementState|[managementState](../resources/intune-devices-managementstate.md)|ManagementState. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|referenceId|String|ReferenceId|
|mdmStatus|String|MDMStatus|
|osVersion|String|OSVersion|
|serialNumber|String|SerialNumber|
|manufacturer|String|Manufacturer|
|model|String|Model|
|osDescription|String|OSDescription|
|entitySource|Int32|EntitySource|
|userId|String|UserId|
|upn|String|UPN|
|userEmail|String|UserEmail|
|userName|String|UserName|
|status|[comanagementEligibleType](../resources/intune-devices-comanagementeligibletype.md)|ComanagementEligibleStatus. Possible values are: `comanaged`, `eligible`, `eligibleButNotAzureAdJoined`, `needsOsUpdate`, `ineligible`, `scheduledForEnrollment`, `unknownFutureValue`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [comanagementEligibleDevice](../resources/intune-devices-comanagementeligibledevice.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/comanagementEligibleDevices/{comanagementEligibleDeviceId}
Content-type: application/json
Content-length: 714

{
  "@odata.type": "#microsoft.graph.comanagementEligibleDevice",
  "deviceName": "Device Name value",
  "deviceType": "windowsRT",
  "clientRegistrationStatus": "registered",
  "ownerType": "company",
  "managementAgents": "mdm",
  "managementState": "retirePending",
  "referenceId": "Reference Id value",
  "mdmStatus": "Mdm Status value",
  "osVersion": "Os Version value",
  "serialNumber": "Serial Number value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "osDescription": "Os Description value",
  "entitySource": 12,
  "userId": "User Id value",
  "upn": "Upn value",
  "userEmail": "User Email value",
  "userName": "User Name value",
  "status": "eligible"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 763

{
  "@odata.type": "#microsoft.graph.comanagementEligibleDevice",
  "id": "ac20683b-683b-ac20-3b68-20ac3b6820ac",
  "deviceName": "Device Name value",
  "deviceType": "windowsRT",
  "clientRegistrationStatus": "registered",
  "ownerType": "company",
  "managementAgents": "mdm",
  "managementState": "retirePending",
  "referenceId": "Reference Id value",
  "mdmStatus": "Mdm Status value",
  "osVersion": "Os Version value",
  "serialNumber": "Serial Number value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "osDescription": "Os Description value",
  "entitySource": 12,
  "userId": "User Id value",
  "upn": "Upn value",
  "userEmail": "User Email value",
  "userName": "User Name value",
  "status": "eligible"
}
```