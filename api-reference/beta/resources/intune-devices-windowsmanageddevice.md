---
title: "windowsManagedDevice resource type"
description: "Windows devices that are managed or pre-enrolled through Intune"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsManagedDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows devices that are managed or pre-enrolled through Intune


Inherits from [managedDevice](../resources/intune-devices-manageddevice.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsManagedDevices](../api/intune-devices-windowsmanageddevice-list.md)|[windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md) collection|List properties and relationships of the [windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md) objects.|
|[Get windowsManagedDevice](../api/intune-devices-windowsmanageddevice-get.md)|[windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md)|Read properties and relationships of the [windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md) object.|
|[Create windowsManagedDevice](../api/intune-devices-windowsmanageddevice-create.md)|[windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md)|Create a new [windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md) object.|
|[Delete windowsManagedDevice](../api/intune-devices-windowsmanageddevice-delete.md)|None|Deletes a [windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md).|
|[Update windowsManagedDevice](../api/intune-devices-windowsmanageddevice-update.md)|[windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md)|Update the properties of a [windowsManagedDevice](../resources/intune-devices-windowsmanageddevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|userId|String|Unique Identifier for the user associated with the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceName|String|Name of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|hardwareInformation|[hardwareInformation](../resources/intune-devices-hardwareinformation.md)|The hardward details for the device. Includes information such as storage space, manufacturer, serial number, etc. By default most property of this type are set to null/0/false and enum defaults for associated types. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|ownerType|[ownerType](../resources/intune-shared-ownertype.md)|Ownership of the device. Possible values are, 'company' or 'personal'. Default is unknown. Supports $filter operator 'eq' and 'or'. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `company`, `personal`.|
|managedDeviceOwnerType|[managedDeviceOwnerType](../resources/intune-shared-manageddeviceownertype.md)|Ownership of the device. Can be 'company' or 'personal' Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune-devices-deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|managementState|[managementState](../resources/intune-devices-managementstate.md)|Management state of the device. Examples: Managed, RetirePending, etc. Default is managed. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. Supports $filter operator 'lt' and 'gt'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. Supports $filter operator 'lt' and 'gt'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|chassisType|[chassisType](../resources/intune-devices-chassistype.md)|Chassis type of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceType|[deviceType](../resources/intune-shared-devicetype.md)|Platform of the device. Examples: Desktop, WindowsRT, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `blackberry`, `palm`, `unknown`, `cloudPC`.|
|complianceState|[complianceState](../resources/intune-devices-compliancestate.md)|Compliance state of the device. Examples: Compliant, Conflict, Error, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|Whether the device is jail broken or rooted. Default is an empty string. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|managementAgent|[managementAgentType](../resources/intune-shared-managementagenttype.md)|Management channel of the device. Examples: Intune, EAS, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `msSense`, `intuneAosp`, `google`, `unknownFutureValue`.|
|osVersion|String|Operating system version of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|easDeviceId|String|Exchange ActiveSync Id of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|azureADRegistered|Boolean|Whether the device is Azure Active Directory registered. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceEnrollmentType|[deviceEnrollmentType](../resources/intune-devices-deviceenrollmenttype.md)|Enrollment type of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`, `windowsAzureADJoinUsingDeviceAuth`, `appleUserEnrollment`, `appleUserEnrollmentWithServiceAccount`, `azureAdJoinUsingAzureVmExtension`, `androidEnterpriseDedicatedDevice`, `androidEnterpriseFullyManaged`, `androidEnterpriseCorporateWorkProfile`, `appleACMEBasicBYOD`, `appleACMEDEPUserless`, `appleACMEDEPUDACompanyPortal`, `appleACMEDEPUDASetupAsstLegacy`, `appleACMEDEPUDAModernAuth`.|
|lostModeState|[lostModeState](../resources/intune-devices-lostmodestate.md)|Indicates if Lost mode is enabled or disabled. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|emailAddress|String|Email(s) for the user associated with the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|azureADDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceRegistrationState|[deviceRegistrationState](../resources/intune-devices-deviceregistrationstate.md)|Device registration state. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name. Default is an empty string. Supports $filter operator 'eq' and 'or'. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|isSupervised|Boolean|Device supervised status. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|exchangeAccessState|[deviceManagementExchangeAccessState](../resources/intune-devices-devicemanagementexchangeaccessstate.md)|The Access State of the device in Exchange. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|[deviceManagementExchangeAccessStateReason](../resources/intune-devices-devicemanagementexchangeaccessstatereason.md)|The reason for the device's access state in Exchange. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|remoteAssistanceSessionErrorDetails|String|An error string that identifies issues when creating Remote Assistance session objects. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|isEncrypted|Boolean|Device encryption status. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|userPrincipalName|String|Device user principal name. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|model|String|Model of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|manufacturer|String|Manufacturer of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|imei|String|IMEI. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|serialNumber|String|SerialNumber. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|phoneNumber|String|Phone number of the device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|androidSecurityPatchLevel|String|Android security patch level. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|userDisplayName|String|User display name. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune-devices-configurationmanagerclientenabledfeatures.md)|ConfigrMgr client enabled features. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|wiFiMacAddress|String|Wi-Fi MAC. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune-devices-devicehealthattestationstate.md)|The device health attestation state. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|subscriberCarrier|String|Subscriber Carrier. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|meid|String|MEID. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|totalStorageSpaceInBytes|Int64|Total Storage in Bytes. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|freeStorageSpaceInBytes|Int64|Free Storage in Bytes. Default value is 0. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|managedDeviceName|String|Automatically generated name to identify a device. Can be overwritten to a user friendly name. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|partnerReportedThreatState|[managedDevicePartnerReportedHealthState](../resources/intune-devices-manageddevicepartnerreportedhealthstate.md)|Indicates the threat state of a device when a Mobile Threat Defense partner is in use by the account and device. Read Only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`, `compromised`, `misconfigured`.|
|retireAfterDateTime|DateTimeOffset|Indicates the time after when a device will be auto retired because of scheduled action. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|usersLoggedOn|[loggedOnUser](../resources/intune-devices-loggedonuser.md) collection|Indicates the last logged on users of a device. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|autopilotEnrolled|Boolean|Reports if the managed device is enrolled via auto-pilot. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|requireUserEnrollmentApproval|Boolean|Reports if the managed iOS device is user approval enrollment. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|managementCertificateExpirationDate|DateTimeOffset|Reports device management certificate expiration date. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|iccid|String|Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|udid|String|Unique Device Identifier for iOS and macOS devices. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this Device instance. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|windowsActiveMalwareCount|Int32|Count of active malware for this windows device. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|windowsRemediatedMalwareCount|Int32|Count of remediated malware for this windows device. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|notes|String|Notes on the device created by IT Admin. Default is null. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|configurationManagerClientHealthState|[configurationManagerClientHealthState](../resources/intune-devices-configurationmanagerclienthealthstate.md)|Configuration manager client health state, valid only for devices managed by MDM/ConfigMgr Agent Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|configurationManagerClientInformation|[configurationManagerClientInformation](../resources/intune-devices-configurationmanagerclientinformation.md)|Configuration manager client information, valid only for devices managed, duel-managed or tri-managed by ConfigMgr Agent Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|ethernetMacAddress|String|Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|physicalMemoryInBytes|Int64|Total Memory in Bytes. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. Read-only. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|processorArchitecture|[managedDeviceArchitecture](../resources/intune-shared-manageddevicearchitecture.md)|Processor architecture. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `x86`, `x64`, `arm`, `arM64`.|
|specificationVersion|String|Specification version. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|joinType|[joinType](../resources/intune-devices-jointype.md)|Device join type Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `unknown`, `azureADJoined`, `azureADRegistered`, `hybridAzureADJoined`.|
|skuFamily|String|Device sku family Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|securityPatchLevel|String|This indicates the security patch level of the operating system. These special updates contain important security fixes. For iOS/MacOS they are in (a) format. For android its in 2017-08-07 format. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|skuNumber|Int32|Device sku number, see also: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo. Valid values 0 to 2147483647. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|managementFeatures|[managedDeviceManagementFeatures](../resources/intune-devices-manageddevicemanagementfeatures.md)|Device management features Inherited from [managedDevice](../resources/intune-devices-manageddevice.md). Possible values are: `none`, `microsoftManagedDesktop`.|
|chromeOSDeviceInfo|[chromeOSDeviceProperty](../resources/intune-devices-chromeosdeviceproperty.md) collection|List of properties of the ChromeOS Device. Default is an empty list. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|enrollmentProfileName|String|Name of the enrollment profile assigned to the device. Default value is empty string, indicating no enrollment profile was assgined. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|bootstrapTokenEscrowed|Boolean|Reports if the managed device has an escrowed Bootstrap Token. This is only for macOS devices. To get, include BootstrapTokenEscrowed in the select clause and query with a device id. If FALSE, no bootstrap token is escrowed. If TRUE, the device has escrowed a bootstrap token with Intune. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceFirmwareConfigurationInterfaceManaged|Boolean|Indicates whether the device is DFCI managed. When TRUE the device is DFCI managed. When FALSE, the device is not DFCI managed. The default value is FALSE. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceIdentityAttestationDetail|[deviceIdentityAttestationDetail](../resources/intune-devices-deviceidentityattestationdetail.md)|Indicates the attestation status of the managed device. And in which way. Default: Unknown. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|All applications currently installed on the device Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceCategory|[deviceCategory](../resources/intune-shared-devicecategory.md)|Device category Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|windowsProtectionState|[windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md)|The device protection status. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|users|[user](../resources/intune-shared-user.md) collection|The primary users associated with the managed device. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|logCollectionRequests|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) collection|List of log collection requests Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|
|deviceHealthScriptStates|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) collection|Results of device health scripts that ran for this device. Default is empty list. This property is read-only. Inherited from [managedDevice](../resources/intune-devices-manageddevice.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagedDevice",
  "id": "String (identifier)",
  "userId": "String",
  "deviceName": "String",
  "hardwareInformation": {
    "@odata.type": "microsoft.graph.hardwareInformation",
    "serialNumber": "String",
    "totalStorageSpace": 1024,
    "freeStorageSpace": 1024,
    "imei": "String",
    "meid": "String",
    "manufacturer": "String",
    "model": "String",
    "phoneNumber": "String",
    "subscriberCarrier": "String",
    "cellularTechnology": "String",
    "wifiMac": "String",
    "operatingSystemLanguage": "String",
    "isSupervised": true,
    "isEncrypted": true,
    "batterySerialNumber": "String",
    "batteryHealthPercentage": 1024,
    "batteryChargeCycles": 1024,
    "isSharedDevice": true,
    "sharedDeviceCachedUsers": [
      {
        "@odata.type": "microsoft.graph.sharedAppleDeviceUser",
        "userPrincipalName": "String",
        "dataToSync": true,
        "dataQuota": 1024,
        "dataUsed": 1024
      }
    ],
    "tpmSpecificationVersion": "String",
    "operatingSystemEdition": "String",
    "deviceFullQualifiedDomainName": "String",
    "deviceGuardVirtualizationBasedSecurityHardwareRequirementState": "String",
    "deviceGuardVirtualizationBasedSecurityState": "String",
    "deviceGuardLocalSystemAuthorityCredentialGuardState": "String",
    "osBuildNumber": "String",
    "operatingSystemProductType": 1024,
    "ipAddressV4": "String",
    "subnetAddress": "String",
    "esimIdentifier": "String",
    "systemManagementBIOSVersion": "String",
    "tpmManufacturer": "String",
    "tpmVersion": "String",
    "wiredIPv4Addresses": [
      "String"
    ],
    "batteryLevelPercentage": "4.2",
    "residentUsersCount": 1024,
    "productName": "String",
    "deviceLicensingStatus": "String",
    "deviceLicensingLastErrorCode": 1024,
    "deviceLicensingLastErrorDescription": "String"
  },
  "ownerType": "String",
  "managedDeviceOwnerType": "String",
  "deviceActionResults": [
    {
      "@odata.type": "microsoft.graph.deviceActionResult",
      "actionName": "String",
      "actionState": "String",
      "startDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)"
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
  "easActivated": true,
  "easDeviceId": "String",
  "easActivationDateTime": "String (timestamp)",
  "aadRegistered": true,
  "azureADRegistered": true,
  "deviceEnrollmentType": "String",
  "lostModeState": "String",
  "activationLockBypassCode": "String",
  "emailAddress": "String",
  "azureActiveDirectoryDeviceId": "String",
  "azureADDeviceId": "String",
  "deviceRegistrationState": "String",
  "deviceCategoryDisplayName": "String",
  "isSupervised": true,
  "exchangeLastSuccessfulSyncDateTime": "String (timestamp)",
  "exchangeAccessState": "String",
  "exchangeAccessStateReason": "String",
  "remoteAssistanceSessionUrl": "String",
  "remoteAssistanceSessionErrorDetails": "String",
  "isEncrypted": true,
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
    "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures",
    "inventory": true,
    "modernApps": true,
    "resourceAccess": true,
    "deviceConfiguration": true,
    "compliancePolicy": true,
    "windowsUpdateForBusiness": true,
    "endpointProtection": true,
    "officeApps": true
  },
  "wiFiMacAddress": "String",
  "deviceHealthAttestationState": {
    "@odata.type": "microsoft.graph.deviceHealthAttestationState",
    "lastUpdateDateTime": "String",
    "contentNamespaceUrl": "String",
    "deviceHealthAttestationStatus": "String",
    "contentVersion": "String",
    "issuedDateTime": "String (timestamp)",
    "attestationIdentityKey": "String",
    "resetCount": 1024,
    "restartCount": 1024,
    "dataExcutionPolicy": "String",
    "bitLockerStatus": "String",
    "bootManagerVersion": "String",
    "codeIntegrityCheckVersion": "String",
    "secureBoot": "String",
    "bootDebugging": "String",
    "operatingSystemKernelDebugging": "String",
    "codeIntegrity": "String",
    "testSigning": "String",
    "safeMode": "String",
    "windowsPE": "String",
    "earlyLaunchAntiMalwareDriverProtection": "String",
    "virtualSecureMode": "String",
    "pcrHashAlgorithm": "String",
    "bootAppSecurityVersion": "String",
    "bootManagerSecurityVersion": "String",
    "tpmVersion": "String",
    "pcr0": "String",
    "secureBootConfigurationPolicyFingerPrint": "String",
    "codeIntegrityPolicy": "String",
    "bootRevisionListInfo": "String",
    "operatingSystemRevListInfo": "String",
    "healthStatusMismatchInfo": "String",
    "healthAttestationSupportedStatus": "String",
    "memoryIntegrityProtection": "String",
    "memoryAccessProtection": "String",
    "virtualizationBasedSecurity": "String",
    "firmwareProtection": "String",
    "systemManagementMode": "String",
    "securedCorePC": "String"
  },
  "subscriberCarrier": "String",
  "meid": "String",
  "totalStorageSpaceInBytes": 1024,
  "freeStorageSpaceInBytes": 1024,
  "managedDeviceName": "String",
  "partnerReportedThreatState": "String",
  "retireAfterDateTime": "String (timestamp)",
  "usersLoggedOn": [
    {
      "@odata.type": "microsoft.graph.loggedOnUser",
      "userId": "String",
      "lastLogOnDateTime": "String (timestamp)"
    }
  ],
  "preferMdmOverGroupPolicyAppliedDateTime": "String (timestamp)",
  "autopilotEnrolled": true,
  "requireUserEnrollmentApproval": true,
  "managementCertificateExpirationDate": "String (timestamp)",
  "iccid": "String",
  "udid": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "windowsActiveMalwareCount": 1024,
  "windowsRemediatedMalwareCount": 1024,
  "notes": "String",
  "configurationManagerClientHealthState": {
    "@odata.type": "microsoft.graph.configurationManagerClientHealthState",
    "state": "String",
    "errorCode": 1024,
    "lastSyncDateTime": "String (timestamp)"
  },
  "configurationManagerClientInformation": {
    "@odata.type": "microsoft.graph.configurationManagerClientInformation",
    "clientIdentifier": "String",
    "isBlocked": true,
    "clientVersion": "String"
  },
  "ethernetMacAddress": "String",
  "physicalMemoryInBytes": 1024,
  "processorArchitecture": "String",
  "specificationVersion": "String",
  "joinType": "String",
  "skuFamily": "String",
  "securityPatchLevel": "String",
  "skuNumber": 1024,
  "managementFeatures": "String",
  "chromeOSDeviceInfo": [
    {
      "@odata.type": "microsoft.graph.chromeOSDeviceProperty",
      "name": "String",
      "value": "String",
      "valueType": "String",
      "updatable": true
    }
  ],
  "enrollmentProfileName": "String",
  "bootstrapTokenEscrowed": true,
  "deviceFirmwareConfigurationInterfaceManaged": true,
  "deviceIdentityAttestationDetail": {
    "@odata.type": "microsoft.graph.deviceIdentityAttestationDetail",
    "deviceIdentityAttestationStatus": "String"
  }
}
```
