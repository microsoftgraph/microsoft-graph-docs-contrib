---
title: "managedDevice resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# managedDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List managedDevices](../api/intune-manageddevice-list.md)|[managedDevice](../resources/intune-manageddevice.md) collection|Get a list of the [managedDevice](../resources/manageddevice.md) objects and their properties.|
|[Create managedDevice](../api/intune-manageddevice-create.md)|[managedDevice](../resources/intune-manageddevice.md)|Create a new [managedDevice](../resources/intune-manageddevice.md) object.|
|[Get managedDevice](../api/intune-manageddevice-get.md)|[managedDevice](../resources/intune-manageddevice.md)|Read the properties and relationships of a [managedDevice](../resources/intune-manageddevice.md) object.|
|[Update managedDevice](../api/intune-manageddevice-update.md)|[managedDevice](../resources/intune-manageddevice.md)|Update the properties of a [managedDevice](../resources/intune-manageddevice.md) object.|
|[Delete managedDevice](../api/intune-manageddevice-delete.md)|None|Deletes a [managedDevice](../resources/intune-manageddevice.md) object.|
|[wipe](../api/intune-manageddevice-wipe.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aadRegistered|Boolean|**TODO: Add Description**|
|activationLockBypassCode|String|**TODO: Add Description**|
|androidSecurityPatchLevel|String|**TODO: Add Description**|
|autopilotEnrolled|Boolean|**TODO: Add Description**|
|azureActiveDirectoryDeviceId|String|**TODO: Add Description**|
|azureADDeviceId|String|**TODO: Add Description**|
|azureADRegistered|Boolean|**TODO: Add Description**|
|chassisType|chassisType|**TODO: Add Description**. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|chromeOSDeviceInfo|[chromeOSDeviceProperty](../resources/intune-chromeosdeviceproperty.md) collection|**TODO: Add Description**|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|**TODO: Add Description**|
|complianceState|complianceState|**TODO: Add Description**. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune-configurationmanagerclientenabledfeatures.md)|**TODO: Add Description**|
|configurationManagerClientHealthState|[configurationManagerClientHealthState](../resources/intune-configurationmanagerclienthealthstate.md)|**TODO: Add Description**|
|configurationManagerClientInformation|[configurationManagerClientInformation](../resources/intune-configurationmanagerclientinformation.md)|**TODO: Add Description**|
|deviceActionResults|[deviceActionResult](../resources/intune-deviceactionresult.md) collection|**TODO: Add Description**|
|deviceCategoryDisplayName|String|**TODO: Add Description**|
|deviceEnrollmentType|deviceEnrollmentType|**TODO: Add Description**. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`, `windowsAzureADJoinUsingDeviceAuth`, `appleUserEnrollment`, `appleUserEnrollmentWithServiceAccount`, `azureAdJoinUsingAzureVmExtension`, `androidEnterpriseDedicatedDevice`, `androidEnterpriseFullyManaged`, `androidEnterpriseCorporateWorkProfile`.|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune-devicehealthattestationstate.md)|**TODO: Add Description**|
|deviceName|String|**TODO: Add Description**|
|deviceRegistrationState|deviceRegistrationState|**TODO: Add Description**. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceType|deviceType|**TODO: Add Description**. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `blackberry`, `palm`, `unknown`, `cloudPC`.|
|easActivated|Boolean|**TODO: Add Description**|
|easActivationDateTime|DateTimeOffset|**TODO: Add Description**|
|easDeviceId|String|**TODO: Add Description**|
|emailAddress|String|**TODO: Add Description**|
|enrolledDateTime|DateTimeOffset|**TODO: Add Description**|
|ethernetMacAddress|String|**TODO: Add Description**|
|exchangeAccessState|deviceManagementExchangeAccessState|**TODO: Add Description**. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|deviceManagementExchangeAccessStateReason|**TODO: Add Description**. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|freeStorageSpaceInBytes|Int64|**TODO: Add Description**|
|hardwareInformation|[hardwareInformation](../resources/intune-hardwareinformation.md)|**TODO: Add Description**|
|iccid|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|imei|String|**TODO: Add Description**|
|isEncrypted|Boolean|**TODO: Add Description**|
|isSupervised|Boolean|**TODO: Add Description**|
|jailBroken|String|**TODO: Add Description**|
|joinType|joinType|**TODO: Add Description**. Possible values are: `unknown`, `azureADJoined`, `azureADRegistered`, `hybridAzureADJoined`.|
|lastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|lostModeState|lostModeState|**TODO: Add Description**. Possible values are: `disabled`, `enabled`.|
|managedDeviceName|String|**TODO: Add Description**|
|managedDeviceOwnerType|managedDeviceOwnerType|**TODO: Add Description**. Possible values are: `unknown`, `company`, `personal`.|
|managementAgent|managementAgentType|**TODO: Add Description**. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `windowsManagementCloudApi`.|
|managementCertificateExpirationDate|DateTimeOffset|**TODO: Add Description**|
|managementFeatures|managedDeviceManagementFeatures|**TODO: Add Description**. Possible values are: `none`, `microsoftManagedDesktop`.|
|managementState|managementState|**TODO: Add Description**. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|manufacturer|String|**TODO: Add Description**|
|meid|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|operatingSystem|String|**TODO: Add Description**|
|osVersion|String|**TODO: Add Description**|
|ownerType|ownerType|**TODO: Add Description**. Possible values are: `unknown`, `company`, `personal`.|
|partnerReportedThreatState|managedDevicePartnerReportedHealthState|**TODO: Add Description**. Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`, `compromised`, `misconfigured`.|
|phoneNumber|String|**TODO: Add Description**|
|physicalMemoryInBytes|Int64|**TODO: Add Description**|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|**TODO: Add Description**|
|processorArchitecture|managedDeviceArchitecture|**TODO: Add Description**. Possible values are: `unknown`, `x86`, `x64`, `arm`, `arM64`.|
|remoteAssistanceSessionErrorDetails|String|**TODO: Add Description**|
|remoteAssistanceSessionUrl|String|**TODO: Add Description**|
|requireUserEnrollmentApproval|Boolean|**TODO: Add Description**|
|retireAfterDateTime|DateTimeOffset|**TODO: Add Description**|
|roleScopeTagIds|String collection|**TODO: Add Description**|
|serialNumber|String|**TODO: Add Description**|
|skuFamily|String|**TODO: Add Description**|
|skuNumber|Int32|**TODO: Add Description**|
|specificationVersion|String|**TODO: Add Description**|
|subscriberCarrier|String|**TODO: Add Description**|
|totalStorageSpaceInBytes|Int64|**TODO: Add Description**|
|udid|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|usersLoggedOn|[loggedOnUser](../resources/intune-loggedonuser.md) collection|**TODO: Add Description**|
|wiFiMacAddress|String|**TODO: Add Description**|
|windowsActiveMalwareCount|Int32|**TODO: Add Description**|
|windowsRemediatedMalwareCount|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentFilterEvaluationStatusDetails|[assignmentFilterEvaluationStatusDetails](../resources/intune-assignmentfilterevaluationstatusdetails.md) collection|**TODO: Add Description**|
|detectedApps|[detectedApp](../resources/intune-detectedapp.md) collection|**TODO: Add Description**|
|deviceCategory|[deviceCategory](../resources/intune-devicecategory.md)|**TODO: Add Description**|
|deviceCompliancePolicyStates|[deviceCompliancePolicyState](../resources/intune-devicecompliancepolicystate.md) collection|**TODO: Add Description**|
|deviceConfigurationStates|[deviceConfigurationState](../resources/intune-deviceconfigurationstate.md) collection|**TODO: Add Description**|
|logCollectionRequests|[deviceLogCollectionResponse](../resources/intune-devicelogcollectionresponse.md) collection|**TODO: Add Description**|
|managedDeviceMobileAppConfigurationStates|[managedDeviceMobileAppConfigurationState](../resources/intune-manageddevicemobileappconfigurationstate.md) collection|**TODO: Add Description**|
|securityBaselineStates|[securityBaselineState](../resources/intune-securitybaselinestate.md) collection|**TODO: Add Description**|
|users|[user](../resources/user.md) collection|**TODO: Add Description**|
|windowsProtectionState|[windowsProtectionState](../resources/intune-windowsprotectionstate.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "String (identifier)",
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

