---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Intune Account Protection policy.



## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Write | String | Identity of the account protection policy. | - |
| DisplayName | Key | String | Display name of the account protection rules policy. | - |
| Description | Write | String | Description of the account protection rules policy. | - |
| Assignments | Write | AccountProtectionPolicyAssignments[] | Assignments of the Intune Policy. | - |
| WindowsHelloForBusinessBlocked | Write | String | Block Windows Hello for Business. | `notConfigured`, `true`, `false` |
| PinMinimumLength | Write | UInt32 | Minimum PIN length must be between 4 and 127. (4-127) | - |
| PinMaximumLength | Write | UInt32 | Maximum PIN length must be between 4 and 127. (4-127) | - |
| PinLowercaseCharactersUsage | Write | String | If required, user PIN must include at least one lowercase letter. | `notConfigured`, `blocked`, `required`, `allowed` |
| PinUppercaseCharactersUsage | Write | String | If required, user PIN must include at least one uppercase letter. | `notConfigured`, `blocked`, `required`, `allowed` |
| PinSpecialCharactersUsage | Write | String | If required, user PIN must include at least one special character. | `notConfigured`, `blocked`, `required`, `allowed` |
| PinExpirationInDays | Write | UInt32 | If configured, the user will be forced to change their PIN after the set number of days. (0, 730), 0 = Never | - |
| PinPreviousBlockCount | Write | UInt32 | If configured, the user will not be able to reuse this number of previous PINs. (0, 50), 0 = Do not remember. | - |
| PinRecoveryEnabled | Write | Boolean | If enabled, the PIN recovery secret will be stored on the device and the user can change their PIN if needed. If disabled or not configured, the recovery secret will not be created or stored. | - |
| SecurityDeviceRequired | Write | Boolean | If you enable this policy setting, only devices with a usable TPM provision Windows Hello for Business. If you disable or do not configure this policy setting, the TPM is still preferred, but all devices provision Windows Hello for Business. | - |
| UnlockWithBiometricsEnabled | Write | Boolean | If allowed, Windows Hello for Business can authenticate using gestures, such as face and fingerprint. Users must still configure a PIN in case of failure. | - |
| EnhancedAntiSpoofingForFacialFeaturesEnabled | Write | Boolean | If enabled, devices will use enhanced anti-spoofing, when available. If not configured, the client configuration for anti-spoofing will be honored. | - |
| UseCertificatesForOnPremisesAuthEnabled | Write | Boolean | If configured, Windows Hello for Business can use certificates to authenticate to on-premise resources. | - |
| UseSecurityKeyForSignin | Write | Boolean | Enable Windows Hello security key as a logon credential for all PCs in the tenant. | - |
| DeviceGuardLocalSystemAuthorityCredentialGuardSettings | Write | String | Setting this Disable will disable the use of Credential Guard, which is the Windows default. Setting this to Enable with UEFI lock will enable Credential Guard and not allow it to be disabled remotely, as the UEFI persisted configuration must be manually cleared. Setting this to Enable without UEFI lock will enable Credential Guard and allow it to be turned off without physical access to the machine. | `notConfigured`, `disable`, `enableWithUEFILock`, `enableWithoutUEFILock` |
| Ensure | Write | String | Present ensures the site collection exists, absent ensures it's removed | `Present`, `Absent` |

### AccountProtectionPolicyAssignments

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | DeviceManagementConfiguration.ReadWrite.All |



