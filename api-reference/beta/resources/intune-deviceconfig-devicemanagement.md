---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-deviceconfig-devicemanagement-get.md)|[deviceManagement](../resources/intune-deviceconfig-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-deviceconfig-devicemanagement-update.md)|[deviceManagement](../resources/intune-deviceconfig-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.|
|[enableUnlicensedAdminstrators action](../api/intune-deviceconfig-devicemanagement-enableunlicensedadminstrators.md)|None|Upon enabling, users assigned as administrators via Role Assignment Memberships will no longer require an assigned Intune license. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators will continue to function as-is in that transitive memberships apply and are not subject to the 350 member limit.|
|[enableLegacyPcManagement action](../api/intune-deviceconfig-devicemanagement-enablelegacypcmanagement.md)|None||
|[enableAndroidDeviceAdministratorEnrollment action](../api/intune-deviceconfig-devicemanagement-enableandroiddeviceadministratorenrollment.md)|None||
|[enableEndpointPrivilegeManagement action](../api/intune-deviceconfig-devicemanagement-enableendpointprivilegemanagement.md)|None|Triggers onboarding of tenant to Microsoft Managed Platform - Cloud (MMP-C).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|intuneAccountId|Guid|Intune Account Id for given tenant|
|lastReportAggregationDateTime|DateTimeOffset|The last modified time of reporting for this account. This property is read-only.|
|deviceComplianceReportSummarizationDateTime|DateTimeOffset|The last requested time of device compliance reporting for this account. This property is read-only.|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|
|unlicensedAdminstratorsEnabled|Boolean|When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfigurations|[deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune-deviceconfig-devicecompliancepolicy.md) collection|The device compliance policies.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune-deviceconfig-softwareupdatestatussummary.md)|The software update status summary.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|advancedThreatProtectionOnboardingStateSummary|[advancedThreatProtectionOnboardingStateSummary](../resources/intune-deviceconfig-advancedthreatprotectiononboardingstatesummary.md)|The summary state of ATP onboarding state for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune-deviceconfig-deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurationUserStateSummaries|[deviceConfigurationUserStateSummary](../resources/intune-deviceconfig-deviceconfigurationuserstatesummary.md)|The device configuration user state summary for this account.|
|cartToClassAssociations|[cartToClassAssociation](../resources/intune-deviceconfig-carttoclassassociation.md) collection|The Cart To Class Associations.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune-deviceconfig-iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|ndesConnectors|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) collection|The collection of Ndes connectors for this account.|
|deviceConfigurationRestrictedAppsViolations|[restrictedAppsViolation](../resources/intune-deviceconfig-restrictedappsviolation.md) collection|Restricted apps violations for this account.|
|managedDeviceEncryptionStates|[managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) collection|Encryption report for devices in this account|
|deviceConfigurationConflictSummary|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) collection|Summary of policies in conflict state for this account.|
|deviceConfigurationsAllManagedDeviceCertificateStates|[managedAllDeviceCertificateState](../resources/intune-deviceconfig-managedalldevicecertificatestate.md) collection|Summary of all certificates for all devices.|
|macOSSoftwareUpdateAccountSummaries|[macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) collection|The MacOS software update account summaries for this account.|
|hardwareConfigurations|[hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) collection|The hardware configurations for this account.|
|hardwarePasswordInfo|[hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) collection|The hardware password info for this account.|
|endpointPrivilegeManagementProvisioningStatus|[endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md)|Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 1024,
    "isScheduledActionEnabled": true,
    "secureByDefault": true,
    "enhancedJailBreak": true,
    "deviceInactivityBeforeRetirementInDay": 1024,
    "derivedCredentialProvider": "String",
    "derivedCredentialUrl": "String",
    "androidDeviceAdministratorEnrollmentEnabled": true,
    "ignoreDevicesForUnsupportedSettingsEnabled": true,
    "enableLogCollection": true,
    "enableAutopilotDiagnostics": true,
    "enableEnhancedTroubleshootingExperience": true,
    "enableDeviceGroupMembershipReport": true,
    "m365AppDiagnosticsEnabled": true
  },
  "maximumDepTokens": 1024,
  "intuneAccountId": "Guid",
  "lastReportAggregationDateTime": "String (timestamp)",
  "deviceComplianceReportSummarizationDateTime": "String (timestamp)",
  "legacyPcManangementEnabled": true,
  "unlicensedAdminstratorsEnabled": true
}
```
