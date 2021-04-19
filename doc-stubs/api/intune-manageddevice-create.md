---
title: "Create managedDevice"
description: "Create a new managedDevice object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create managedDevice
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [managedDevice](../resources/intune-manageddevice.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/managedDevices
POST /users/{usersId}/managedDevices
POST /deviceManagement/managedDevices
POST /deviceManagement/comanagedDevices
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [managedDevice](../resources/intune-manageddevice.md) object.

The following table shows the properties that are required when you create the [managedDevice](../resources/intune-manageddevice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|userId|String|**TODO: Add Description**|
|deviceName|String|**TODO: Add Description**|
|hardwareInformation|[hardwareInformation](../resources/intune-hardwareinformation.md)|**TODO: Add Description**|
|ownerType|ownerType|**TODO: Add Description**. Possible values are: `unknown`, `company`, `personal`.|
|managedDeviceOwnerType|managedDeviceOwnerType|**TODO: Add Description**. Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune-deviceactionresult.md) collection|**TODO: Add Description**|
|managementState|managementState|**TODO: Add Description**. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|**TODO: Add Description**|
|lastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|chassisType|chassisType|**TODO: Add Description**. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|**TODO: Add Description**|
|deviceType|deviceType|**TODO: Add Description**. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `blackberry`, `palm`, `unknown`, `cloudPC`.|
|complianceState|complianceState|**TODO: Add Description**. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|**TODO: Add Description**|
|managementAgent|managementAgentType|**TODO: Add Description**. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `windowsManagementCloudApi`.|
|osVersion|String|**TODO: Add Description**|
|easActivated|Boolean|**TODO: Add Description**|
|easDeviceId|String|**TODO: Add Description**|
|easActivationDateTime|DateTimeOffset|**TODO: Add Description**|
|aadRegistered|Boolean|**TODO: Add Description**|
|azureADRegistered|Boolean|**TODO: Add Description**|
|deviceEnrollmentType|deviceEnrollmentType|**TODO: Add Description**. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`, `windowsAzureADJoinUsingDeviceAuth`, `appleUserEnrollment`, `appleUserEnrollmentWithServiceAccount`, `azureAdJoinUsingAzureVmExtension`, `androidEnterpriseDedicatedDevice`, `androidEnterpriseFullyManaged`, `androidEnterpriseCorporateWorkProfile`.|
|lostModeState|lostModeState|**TODO: Add Description**. Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|**TODO: Add Description**|
|emailAddress|String|**TODO: Add Description**|
|azureActiveDirectoryDeviceId|String|**TODO: Add Description**|
|azureADDeviceId|String|**TODO: Add Description**|
|deviceRegistrationState|deviceRegistrationState|**TODO: Add Description**. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|**TODO: Add Description**|
|isSupervised|Boolean|**TODO: Add Description**|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|exchangeAccessState|deviceManagementExchangeAccessState|**TODO: Add Description**. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|deviceManagementExchangeAccessStateReason|**TODO: Add Description**. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|**TODO: Add Description**|
|remoteAssistanceSessionErrorDetails|String|**TODO: Add Description**|
|isEncrypted|Boolean|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|manufacturer|String|**TODO: Add Description**|
|imei|String|**TODO: Add Description**|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|**TODO: Add Description**|
|serialNumber|String|**TODO: Add Description**|
|phoneNumber|String|**TODO: Add Description**|
|androidSecurityPatchLevel|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune-configurationmanagerclientenabledfeatures.md)|**TODO: Add Description**|
|wiFiMacAddress|String|**TODO: Add Description**|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune-devicehealthattestationstate.md)|**TODO: Add Description**|
|subscriberCarrier|String|**TODO: Add Description**|
|meid|String|**TODO: Add Description**|
|totalStorageSpaceInBytes|Int64|**TODO: Add Description**|
|freeStorageSpaceInBytes|Int64|**TODO: Add Description**|
|managedDeviceName|String|**TODO: Add Description**|
|partnerReportedThreatState|managedDevicePartnerReportedHealthState|**TODO: Add Description**. Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`, `compromised`, `misconfigured`.|
|retireAfterDateTime|DateTimeOffset|**TODO: Add Description**|
|usersLoggedOn|[loggedOnUser](../resources/intune-loggedonuser.md) collection|**TODO: Add Description**|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|**TODO: Add Description**|
|autopilotEnrolled|Boolean|**TODO: Add Description**|
|requireUserEnrollmentApproval|Boolean|**TODO: Add Description**|
|managementCertificateExpirationDate|DateTimeOffset|**TODO: Add Description**|
|iccid|String|**TODO: Add Description**|
|udid|String|**TODO: Add Description**|
|roleScopeTagIds|String collection|**TODO: Add Description**|
|windowsActiveMalwareCount|Int32|**TODO: Add Description**|
|windowsRemediatedMalwareCount|Int32|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|configurationManagerClientHealthState|[configurationManagerClientHealthState](../resources/intune-configurationmanagerclienthealthstate.md)|**TODO: Add Description**|
|configurationManagerClientInformation|[configurationManagerClientInformation](../resources/intune-configurationmanagerclientinformation.md)|**TODO: Add Description**|
|ethernetMacAddress|String|**TODO: Add Description**|
|physicalMemoryInBytes|Int64|**TODO: Add Description**|
|processorArchitecture|managedDeviceArchitecture|**TODO: Add Description**. Possible values are: `unknown`, `x86`, `x64`, `arm`, `arM64`.|
|specificationVersion|String|**TODO: Add Description**|
|joinType|joinType|**TODO: Add Description**. Possible values are: `unknown`, `azureADJoined`, `azureADRegistered`, `hybridAzureADJoined`.|
|skuFamily|String|**TODO: Add Description**|
|skuNumber|Int32|**TODO: Add Description**|
|managementFeatures|managedDeviceManagementFeatures|**TODO: Add Description**. Possible values are: `none`, `microsoftManagedDesktop`.|
|chromeOSDeviceInfo|[chromeOSDeviceProperty](../resources/intune-chromeosdeviceproperty.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [managedDevice](../resources/intune-manageddevice.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_manageddevice_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/managedDevices
Content-Type: application/json
Content-length: 3441

{
  "@odata.type": "#microsoft.graph.managedDevice",
  "userId": "String",
  "deviceName": "String",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation"
  },
  "ownerType": "String",
  "managedDeviceOwnerType": "String",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult"
    }
  ],
  "managementState": "String",
  "enrolledDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "chassisType": "String",
  "operatingSystem": "String",
  "deviceType": "String",
  "complianceState": "String",
  "jailBroken": "String",
  "managementAgent": "String",
  "osVersion": "String",
  "easActivated": "Boolean",
  "easDeviceId": "String",
  "easActivationDateTime": "String (timestamp)",
  "aadRegistered": "Boolean",
  "azureADRegistered": "Boolean",
  "deviceEnrollmentType": "String",
  "lostModeState": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureActiveDirectoryDeviceId": "String",
  "azureADDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": "Boolean",
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
  "remoteAssistanceSessionErrorDetails": "String",
  "isEncrypted": "Boolean",
  "userPrincipalName": "String",
  "model": "String",
  "manufacturer": "String",
  "imei": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "serialNumber": "String",
  "phoneNumber": "String",
  "androidSecurityPatchLevel": "String",
  "userDisplayName": "String",
  "configurationManagerClientEnabledFeatures": {
    "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures"
  },
  "wiFiMacAddress": "String",
  "deviceHealthAttestationState": {
    "@odata.type": "microsoft.graph.deviceHealthAttestationState"
  },
  "subscriberCarrier": "String",
  "meid": "String",
  "totalStorageSpaceInBytes": "Integer",
  "freeStorageSpaceInBytes": "Integer",
  "managedDeviceName": "String",
  "partnerReportedThreatState": "String",
  "retireAfterDateTime": "String (timestamp)",
  "usersLoggedOn": [
    {
      "@odata.type": "microsoft.graph.loggedOnUser"
    }
  ],
  "preferMdmOverGroupPolicyAppliedDateTime": "String (timestamp)",
  "autopilotEnrolled": "Boolean",
  "requireUserEnrollmentApproval": "Boolean",
  "managementCertificateExpirationDate": "String (timestamp)",
  "iccid": "String",
  "udid": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "windowsActiveMalwareCount": "Integer",
  "windowsRemediatedMalwareCount": "Integer",
  "notes": "String",
  "configurationManagerClientHealthState": {
    "@odata.type": "microsoft.graph.configurationManagerClientHealthState"
  },
  "configurationManagerClientInformation": {
    "@odata.type": "microsoft.graph.configurationManagerClientInformation"
  },
  "ethernetMacAddress": "String",
  "physicalMemoryInBytes": "Integer",
  "processorArchitecture": "String",
  "specificationVersion": "String",
  "joinType": "String",
  "skuFamily": "String",
  "skuNumber": "Integer",
  "managementFeatures": "String",
  "chromeOSDeviceInfo": [
    {
      "@odata.type": "microsoft.graph.chromeOSDeviceProperty"
    }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "853d6e79-6e79-853d-796e-3d85796e3d85",
  "userId": "String",
  "deviceName": "String",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation"
  },
  "ownerType": "String",
  "managedDeviceOwnerType": "String",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult"
    }
  ],
  "managementState": "String",
  "enrolledDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "chassisType": "String",
  "operatingSystem": "String",
  "deviceType": "String",
  "complianceState": "String",
  "jailBroken": "String",
  "managementAgent": "String",
  "osVersion": "String",
  "easActivated": "Boolean",
  "easDeviceId": "String",
  "easActivationDateTime": "String (timestamp)",
  "aadRegistered": "Boolean",
  "azureADRegistered": "Boolean",
  "deviceEnrollmentType": "String",
  "lostModeState": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureActiveDirectoryDeviceId": "String",
  "azureADDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": "Boolean",
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
  "remoteAssistanceSessionErrorDetails": "String",
  "isEncrypted": "Boolean",
  "userPrincipalName": "String",
  "model": "String",
  "manufacturer": "String",
  "imei": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "serialNumber": "String",
  "phoneNumber": "String",
  "androidSecurityPatchLevel": "String",
  "userDisplayName": "String",
  "configurationManagerClientEnabledFeatures": {
    "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures"
  },
  "wiFiMacAddress": "String",
  "deviceHealthAttestationState": {
    "@odata.type": "microsoft.graph.deviceHealthAttestationState"
  },
  "subscriberCarrier": "String",
  "meid": "String",
  "totalStorageSpaceInBytes": "Integer",
  "freeStorageSpaceInBytes": "Integer",
  "managedDeviceName": "String",
  "partnerReportedThreatState": "String",
  "retireAfterDateTime": "String (timestamp)",
  "usersLoggedOn": [
    {
      "@odata.type": "microsoft.graph.loggedOnUser"
    }
  ],
  "preferMdmOverGroupPolicyAppliedDateTime": "String (timestamp)",
  "autopilotEnrolled": "Boolean",
  "requireUserEnrollmentApproval": "Boolean",
  "managementCertificateExpirationDate": "String (timestamp)",
  "iccid": "String",
  "udid": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "windowsActiveMalwareCount": "Integer",
  "windowsRemediatedMalwareCount": "Integer",
  "notes": "String",
  "configurationManagerClientHealthState": {
    "@odata.type": "microsoft.graph.configurationManagerClientHealthState"
  },
  "configurationManagerClientInformation": {
    "@odata.type": "microsoft.graph.configurationManagerClientInformation"
  },
  "ethernetMacAddress": "String",
  "physicalMemoryInBytes": "Integer",
  "processorArchitecture": "String",
  "specificationVersion": "String",
  "joinType": "String",
  "skuFamily": "String",
  "skuNumber": "Integer",
  "managementFeatures": "String",
  "chromeOSDeviceInfo": [
    {
      "@odata.type": "microsoft.graph.chromeOSDeviceProperty"
    }
  ]
}
```

