---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures the Intune device platform enrollment restrictions.

**Be aware**: To deploy a Android platform restriction policy, two individual configurations must exist:

* The first one contains the key for `AndroidRestriction`
* The second one contains the key for `AndroidForWorkRestriction`


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the device enrollment platform restriction. | - |
| DisplayName | Key | String | Display name of the device enrollment platform restriction. | - |
| Description | Write | String | Description of the device enrollment platform restriction. | - |
| AndroidForWorkRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Android for work restrictions based on platform, platform operating system version, and device ownership. | - |
| AndroidRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Android restrictions based on platform, platform operating system version, and device ownership. | - |
| IosRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Ios restrictions based on platform, platform operating system version, and device ownership. | - |
| MacOSRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Mac restrictions based on platform, platform operating system version, and device ownership. | - |
| MacRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Mac restrictions based on platform, platform operating system version, and device ownership. | - |
| WindowsHomeSkuRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Windows Home Sku restrictions based on platform, platform operating system version, and device ownership. | - |
| WindowsMobileRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Windows mobile restrictions based on platform, platform operating system version, and device ownership. | - |
| WindowsRestriction | Write | MSFT_DeviceEnrollmentPlatformRestriction | Windows restrictions based on platform, platform operating system version, and device ownership. | - |
| DeviceEnrollmentConfigurationType | Write | String | Support for Enrollment Configuration Type | `platformRestrictions`, `singlePlatformRestriction` |
| Priority | Write | UInt32 | Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Assignments of the policy. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

#### MSFT_DeviceManagementConfigurationPolicyAssignments

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |

#### MSFT_DeviceEnrollmentPlatformRestriction

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| PlatformBlocked | Write | Boolean | Block the platform from enrolling. | - |
| PersonalDeviceEnrollmentBlocked | Write | Boolean | Block personally owned devices from enrolling. | - |
| OsMinimumVersion | Write | String | Min OS version supported. | - |
| OsMaximumVersion | Write | String | Max OS version supported. | - |
| BlockedManufacturers | Write | StringArray[] | Collection of blocked Manufacturers. | - |
| BlockedSkus | Write | StringArray[] | Collection of blocked Skus. | - |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementServiceConfig.Read.All |
| Update    | Group.Read.All, DeviceManagementServiceConfig.ReadWrite.All |



