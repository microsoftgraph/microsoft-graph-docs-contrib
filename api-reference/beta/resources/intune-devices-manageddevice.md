---
title: "managedDevice resource type"
description: "Devices that are managed or pre-enrolled through Intune"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 10/11/2024
---

# managedDevice resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Devices that are managed or pre-enrolled through Intune

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDevice](../api/intune-devices-manageddevice-get.md)|[managedDevice](../resources/intune-devices-manageddevice.md)|Read properties and relationships of the [managedDevice](../resources/intune-devices-manageddevice.md) object.|
|[Update managedDevice](../api/intune-devices-manageddevice-update.md)|[managedDevice](../resources/intune-devices-manageddevice.md)|Update the properties of a [managedDevice](../resources/intune-devices-manageddevice.md) object.|
|[executeAction action](../api/intune-devices-manageddevice-executeaction.md)|[bulkManagedDeviceActionResult](../resources/intune-devices-bulkmanageddeviceactionresult.md)||
|[enableLostMode action](../api/intune-devices-manageddevice-enablelostmode.md)|None|Enable lost mode|
|[playLostModeSound action](../api/intune-devices-manageddevice-playlostmodesound.md)|None|Play lost mode sound|
|[setDeviceName action](../api/intune-devices-manageddevice-setdevicename.md)|None|Set device name of the device.|
|[activateDeviceEsim action](../api/intune-devices-manageddevice-activatedeviceesim.md)|None|Activate eSIM on the device.|
|[rotateFileVaultKey action](../api/intune-devices-manageddevice-rotatefilevaultkey.md)|None||
|[getFileVaultKey function](../api/intune-devices-manageddevice-getfilevaultkey.md)|String||
|[createDeviceLogCollectionRequest action](../api/intune-devices-manageddevice-createdevicelogcollectionrequest.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)||
|[retire action](../api/intune-devices-manageddevice-retire.md)|None|Retire a device|
|[wipe action](../api/intune-devices-manageddevice-wipe.md)|None|Wipe a device|
|[resetPasscode action](../api/intune-devices-manageddevice-resetpasscode.md)|None|Reset passcode|
|[remoteLock action](../api/intune-devices-manageddevice-remotelock.md)|None|Remote lock|
|[requestRemoteAssistance action](../api/intune-devices-manageddevice-requestremoteassistance.md)|None|Request remote assistance|
|[disableLostMode action](../api/intune-devices-manageddevice-disablelostmode.md)|None|Disable lost mode|
|[locateDevice action](../api/intune-devices-manageddevice-locatedevice.md)|None|Locate a device|
|[bypassActivationLock action](../api/intune-devices-manageddevice-bypassactivationlock.md)|None|Bypass activation lock|
|[rebootNow action](../api/intune-devices-manageddevice-rebootnow.md)|None|Reboot device|
|[shutDown action](../api/intune-devices-manageddevice-shutdown.md)|None|Shut down device|
|[recoverPasscode action](../api/intune-devices-manageddevice-recoverpasscode.md)|None|Recover passcode|
|[cleanWindowsDevice action](../api/intune-devices-manageddevice-cleanwindowsdevice.md)|None|Clean Windows device|
|[logoutSharedAppleDeviceActiveUser action](../api/intune-devices-manageddevice-logoutsharedappledeviceactiveuser.md)|None|Logout shared Apple device active user|
|[deleteUserFromSharedAppleDevice action](../api/intune-devices-manageddevice-deleteuserfromsharedappledevice.md)|None|Delete user from shared Apple device|
|[syncDevice action](../api/intune-devices-manageddevice-syncdevice.md)|None||
|[windowsDefenderScan action](../api/intune-devices-manageddevice-windowsdefenderscan.md)|None||
|[windowsDefenderUpdateSignatures action](../api/intune-devices-manageddevice-windowsdefenderupdatesignatures.md)|None||
|[updateWindowsDeviceAccount action](../api/intune-devices-manageddevice-updatewindowsdeviceaccount.md)|None||
|[revokeAppleVppLicenses action](../api/intune-devices-manageddevice-revokeapplevpplicenses.md)|None|Revoke all Apple Vpp licenses for a device|
|[rotateBitLockerKeys action](../api/intune-devices-manageddevice-rotatebitlockerkeys.md)|None|Rotate BitLockerKeys|
|[sendCustomNotificationToCompanyPortal action](../api/intune-devices-manageddevice-sendcustomnotificationtocompanyportal.md)|None||
|[triggerConfigurationManagerAction action](../api/intune-devices-manageddevice-triggerconfigurationmanageraction.md)|None|Trigger action on ConfigurationManager client|
|[enrollNowAction action](../api/intune-devices-manageddevice-enrollnowaction.md)|None|Trigger comanagement enrollment action on ConfigurationManager client|
|[deprovision action](../api/intune-devices-manageddevice-deprovision.md)|None||
|[disable action](../api/intune-devices-manageddevice-disable.md)|None||
|[reenable action](../api/intune-devices-manageddevice-reenable.md)|None||
|[moveDevicesToOU action](../api/intune-devices-manageddevice-movedevicestoou.md)|None||
|[removeDeviceFirmwareConfigurationInterfaceManagement action](../api/intune-devices-manageddevice-removedevicefirmwareconfigurationinterfacemanagement.md)|None|Remove device from Device Firmware Configuration Interface management|
|[initiateMobileDeviceManagementKeyRecovery action](../api/intune-devices-manageddevice-initiatemobiledevicemanagementkeyrecovery.md)|None|Perform MDM key recovery and TPM attestation|
|[initiateDeviceAttestation action](../api/intune-devices-manageddevice-initiatedeviceattestation.md)|None|Perform Device Attestation|
|[initiateOnDemandProactiveRemediation action](../api/intune-devices-manageddevice-initiateondemandproactiveremediation.md)|None|Perform On Demand Proactive Remediation|
|[rotateLocalAdminPassword action](../api/intune-devices-manageddevice-rotatelocaladminpassword.md)|None|Initiates a manual rotation for the local admin password on the device|
|[pauseConfigurationRefresh action](../api/intune-devices-manageddevice-pauseconfigurationrefresh.md)|None|Initiates a command to pause config refresh for the device.|
|[changeAssignments action](../api/intune-devices-manageddevice-changeassignments.md)|None||
|[appDiagnostics function](../api/intune-devices-manageddevice-appdiagnostics.md)|[powerliftIncidentMetadata](../resources/intune-devices-powerliftincidentmetadata.md) collection||
|[downloadAppDiagnostics action](../api/intune-devices-manageddevice-downloadappdiagnostics.md)|Stream||
|[createQuery action](../api/intune-devices-manageddevice-createquery.md)|[deviceQueryResult](../resources/intune-devices-devicequeryresult.md)|Allows user to send Intune Pivot device query to a managed device|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device. This property is read-only.|
|userId|String|Unique Identifier for the user associated with the device. This property is read-only.|
|deviceName|String|Name of the device. Supports $filter operator 'eq' and 'contains'. This property is read-only.|
|hardwareInformation|[hardwareInformation](../resources/intune-devices-hardwareinformation.md)|The hardward details for the device. Includes information such as storage space, manufacturer, serial number, etc. By default most property of this type are set to null/0/false and enum defaults for associated types. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.|
|ownerType|[ownerType](../resources/intune-shared-ownertype.md)|Ownership of the device. Possible values are, 'company' or 'personal'. Default is unknown. Supports $filter operator 'eq' and 'or'. Possible values are: `unknown`, `company`, `personal`.|
|managedDeviceOwnerType|[managedDeviceOwnerType](../resources/intune-shared-manageddeviceownertype.md)|Ownership of the device. Can be 'company' or 'personal'. Possible values are: `unknown`, `company`, `personal`.|
|deviceActionResults|[deviceActionResult](../resources/intune-devices-deviceactionresult.md) collection|List of ComplexType deviceActionResult objects. This property is read-only.|
|managementState|[managementState](../resources/intune-devices-managementstate.md)|Management state of the device. Examples: Managed, RetirePending, etc. Default is managed. Supports $filter operator 'eq' and 'or'. This property is read-only. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|enrolledDateTime|DateTimeOffset|Enrollment time of the device. Supports $filter operator 'lt' and 'gt'. This property is read-only.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Intune. Supports $filter operator 'lt' and 'gt'. This property is read-only.|
|chassisType|[chassisType](../resources/intune-devices-chassistype.md)|Chassis type of the device. This property is read-only. Possible values are: `unknown`, `desktop`, `laptop`, `worksWorkstation`, `enterpriseServer`, `phone`, `tablet`, `mobileOther`, `mobileUnknown`.|
|operatingSystem|String|Operating system of the device. Windows, iOS, etc. This property is read-only.|
|deviceType|[deviceType](../resources/intune-shared-devicetype.md)|Platform of the device. Examples: Desktop, WindowsRT, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `blackberry`, `palm`, `unknown`, `cloudPC`.|
|complianceState|[complianceState](../resources/intune-devices-compliancestate.md)|Compliance state of the device. Examples: Compliant, Conflict, Error, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`.|
|jailBroken|String|Whether the device is jail broken or rooted. Default is an empty string. Supports $filter operator 'eq' and 'or'. This property is read-only.|
|managementAgent|[managementAgentType](../resources/intune-shared-managementagenttype.md)|Management channel of the device. Examples: Intune, EAS, etc. Default is unknown. Supports $filter operator 'eq' and 'or'. This property is read-only. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `msSense`, `intuneAosp`, `google`, `unknownFutureValue`.|
|osVersion|String|Operating system version of the device. This property is read-only.|
|easActivated|Boolean|Whether the device is Exchange ActiveSync activated. This property is read-only.|
|easDeviceId|String|Exchange ActiveSync Id of the device. This property is read-only.|
|easActivationDateTime|DateTimeOffset|Exchange ActivationSync activation time of the device. This property is read-only.|
|aadRegistered|Boolean|Whether the device is Azure Active Directory registered. This property is read-only.|
|azureADRegistered|Boolean|Whether the device is Azure Active Directory registered. This property is read-only.|
|deviceEnrollmentType|[deviceEnrollmentType](../resources/intune-devices-deviceenrollmenttype.md)|Enrollment type of the device. This property is read-only. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`, `windowsAzureADJoinUsingDeviceAuth`, `appleUserEnrollment`, `appleUserEnrollmentWithServiceAccount`, `azureAdJoinUsingAzureVmExtension`, `androidEnterpriseDedicatedDevice`, `androidEnterpriseFullyManaged`, `androidEnterpriseCorporateWorkProfile`, `androidAOSPUserOwnedDeviceEnrollment`, `androidAOSPUserlessDeviceEnrollment`, `appleACMEBasicBYOD`, `appleACMEDEPUserless`, `appleACMEDEPUDACompanyPortal`, `appleACMEDEPUDASetupAsstLegacy`, `appleACMEDEPUDAModernAuth`.|
|lostModeState|[lostModeState](../resources/intune-devices-lostmodestate.md)|Indicates if Lost mode is enabled or disabled. This property is read-only. Possible values are: `disabled`, `enabled`.|
|activationLockBypassCode|String|The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.|
|emailAddress|String|Email(s) for the user associated with the device. This property is read-only.|
|azureActiveDirectoryDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. This property is read-only.|
|azureADDeviceId|String|The unique identifier for the Azure Active Directory device. Read only. This property is read-only.|
|deviceRegistrationState|[deviceRegistrationState](../resources/intune-devices-deviceregistrationstate.md)|Device registration state. This property is read-only. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|deviceCategoryDisplayName|String|Device category display name. Default is an empty string. Supports $filter operator 'eq' and 'or'. This property is read-only.|
|isSupervised|Boolean|Device supervised status. This property is read-only.|
|exchangeLastSuccessfulSyncDateTime|DateTimeOffset|Last time the device contacted Exchange. This property is read-only.|
|exchangeAccessState|[deviceManagementExchangeAccessState](../resources/intune-devices-devicemanagementexchangeaccessstate.md)|The Access State of the device in Exchange. This property is read-only. Possible values are: `none`, `unknown`, `allowed`, `blocked`, `quarantined`.|
|exchangeAccessStateReason|[deviceManagementExchangeAccessStateReason](../resources/intune-devices-devicemanagementexchangeaccessstatereason.md)|The reason for the device's access state in Exchange. This property is read-only. Possible values are: `none`, `unknown`, `exchangeGlobalRule`, `exchangeIndividualRule`, `exchangeDeviceRule`, `exchangeUpgrade`, `exchangeMailboxPolicy`, `other`, `compliant`, `notCompliant`, `notEnrolled`, `unknownLocation`, `mfaRequired`, `azureADBlockDueToAccessPolicy`, `compromisedPassword`, `deviceNotKnownWithManagedApp`.|
|remoteAssistanceSessionUrl|String|Url that allows a Remote Assistance session to be established with the device. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only.|
|remoteAssistanceSessionErrorDetails|String|An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.|
|isEncrypted|Boolean|Device encryption status. This property is read-only.|
|userPrincipalName|String|Device user principal name. This property is read-only.|
|model|String|Model of the device. This property is read-only.|
|manufacturer|String|Manufacturer of the device. This property is read-only.|
|imei|String|IMEI. This property is read-only.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires. This property is read-only.|
|serialNumber|String|SerialNumber. This property is read-only.|
|phoneNumber|String|Phone number of the device. This property is read-only.|
|androidSecurityPatchLevel|String|Android security patch level. This property is read-only.|
|userDisplayName|String|User display name. This property is read-only.|
|configurationManagerClientEnabledFeatures|[configurationManagerClientEnabledFeatures](../resources/intune-devices-configurationmanagerclientenabledfeatures.md)|ConfigrMgr client enabled features. This property is read-only.|
|wiFiMacAddress|String|Wi-Fi MAC. This property is read-only.|
|deviceHealthAttestationState|[deviceHealthAttestationState](../resources/intune-devices-devicehealthattestationstate.md)|The device health attestation state. This property is read-only.|
|subscriberCarrier|String|Subscriber Carrier. This property is read-only.|
|meid|String|MEID. This property is read-only.|
|totalStorageSpaceInBytes|Int64|Total Storage in Bytes. This property is read-only.|
|freeStorageSpaceInBytes|Int64|Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.|
|managedDeviceName|String|Automatically generated name to identify a device. Can be overwritten to a user friendly name.|
|partnerReportedThreatState|[managedDevicePartnerReportedHealthState](../resources/intune-devices-manageddevicepartnerreportedhealthstate.md)|Indicates the threat state of a device when a Mobile Threat Defense partner is in use by the account and device. Read Only. This property is read-only. Possible values are: `unknown`, `activated`, `deactivated`, `secured`, `lowSeverity`, `mediumSeverity`, `highSeverity`, `unresponsive`, `compromised`, `misconfigured`.|
|retireAfterDateTime|DateTimeOffset|Indicates the time after when a device will be auto retired because of scheduled action. This property is read-only.|
|usersLoggedOn|[loggedOnUser](../resources/intune-devices-loggedonuser.md) collection|Indicates the last logged on users of a device. This property is read-only.|
|preferMdmOverGroupPolicyAppliedDateTime|DateTimeOffset|Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. This property is read-only.|
|autopilotEnrolled|Boolean|Reports if the managed device is enrolled via auto-pilot. This property is read-only.|
|requireUserEnrollmentApproval|Boolean|Reports if the managed iOS device is user approval enrollment. This property is read-only.|
|managementCertificateExpirationDate|DateTimeOffset|Reports device management certificate expiration date. This property is read-only.|
|iccid|String|Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.|
|udid|String|Unique Device Identifier for iOS and macOS devices. Default is an empty string. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this Device instance.|
|windowsActiveMalwareCount|Int32|Count of active malware for this windows device. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only.|
|windowsRemediatedMalwareCount|Int32|Count of remediated malware for this windows device. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. This property is read-only.|
|notes|String|Notes on the device created by IT Admin. Default is null. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. $Search is not supported.|
|configurationManagerClientHealthState|[configurationManagerClientHealthState](../resources/intune-devices-configurationmanagerclienthealthstate.md)|Configuration manager client health state, valid only for devices managed by MDM/ConfigMgr Agent|
|configurationManagerClientInformation|[configurationManagerClientInformation](../resources/intune-devices-configurationmanagerclientinformation.md)|Configuration manager client information, valid only for devices managed, duel-managed or tri-managed by ConfigMgr Agent|
|ethernetMacAddress|String|Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.|
|physicalMemoryInBytes|Int64|Total Memory in Bytes. Default is 0. To retrieve actual values GET call needs to be made, with device id and included in select parameter. Supports: $select. Read-only. This property is read-only.|
|processorArchitecture|[managedDeviceArchitecture](../resources/intune-shared-manageddevicearchitecture.md)|Processor architecture. This property is read-only. Possible values are: `unknown`, `x86`, `x64`, `arm`, `arM64`.|
|specificationVersion|String|Specification version. This property is read-only.|
|joinType|[joinType](../resources/intune-devices-jointype.md)|Device join type. Possible values are: `unknown`, `azureADJoined`, `azureADRegistered`, `hybridAzureADJoined`.|
|skuFamily|String|Device sku family|
|securityPatchLevel|String|This indicates the security patch level of the operating system. These special updates contain important security fixes. For iOS/MacOS they are in (a) format. For android its in 2017-08-07 format. This property is read-only.|
|skuNumber|Int32|Device sku number, see also: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo. Valid values 0 to 2147483647. This property is read-only.|
|managementFeatures|[managedDeviceManagementFeatures](../resources/intune-devices-manageddevicemanagementfeatures.md)|Device management features. Possible values are: `none`, `microsoftManagedDesktop`.|
|chromeOSDeviceInfo|[chromeOSDeviceProperty](../resources/intune-devices-chromeosdeviceproperty.md) collection|List of properties of the ChromeOS Device. Default is an empty list. To retrieve actual values GET call needs to be made, with device id and included in select parameter.|
|enrollmentProfileName|String|Name of the enrollment profile assigned to the device. Default value is empty string, indicating no enrollment profile was assgined. This property is read-only.|
|bootstrapTokenEscrowed|Boolean|Reports if the managed device has an escrowed Bootstrap Token. This is only for macOS devices. To get, include BootstrapTokenEscrowed in the select clause and query with a device id. If FALSE, no bootstrap token is escrowed. If TRUE, the device has escrowed a bootstrap token with Intune. This property is read-only.|
|deviceFirmwareConfigurationInterfaceManaged|Boolean|Indicates whether the device is DFCI managed. When TRUE the device is DFCI managed. When FALSE, the device is not DFCI managed. The default value is FALSE.|
|deviceIdentityAttestationDetail|[deviceIdentityAttestationDetail](../resources/intune-devices-deviceidentityattestationdetail.md)|Indicates the attestation status of the managed device. And in which way. Default: Unknown.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|All applications currently installed on the device|
|deviceCategory|[deviceCategory](../resources/intune-shared-devicecategory.md)|Device category|
|windowsProtectionState|[windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md)|The device protection status. This property is read-only.|
|users|[user](../resources/intune-shared-user.md) collection|The primary users associated with the managed device.|
|logCollectionRequests|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) collection|List of log collection requests|
|deviceHealthScriptStates|[deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) collection|Results of device health scripts that ran for this device. Default is empty list. This property is read-only.|
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
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
