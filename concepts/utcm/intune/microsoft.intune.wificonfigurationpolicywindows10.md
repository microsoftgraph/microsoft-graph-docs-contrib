---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Intune Wifi Configuration Policy for Windows10 Device.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Id** | Write | String | Id of the Intune policy. | |
| **DisplayName** | Key | String | Display name of the Intune policy. | |
| **Description** | Write | String | Description of the Intune policy. | |
| **ConnectAutomatically** | Write | Boolean | Connect automatically | |
| **ConnectToPreferredNetwork** | Write | Boolean | Connect to preferred network | |
| **ConnectWhenNetworkNameIsHidden** | Write | Boolean | Connect when network name is hidden | |
| **ForceFIPSCompliance** | Write | Boolean | Force FIPS compliance | |
| **MeteredConnectionLimit** | Write | String | Metered connection limit | `unrestricted`, `fixed`, `variable` |
| **NetworkName** | Write | String | Network name | |
| **PreSharedKey** | Write | String | Pre shared key | |
| **ProxyAutomaticConfigurationUrl** | Write | String | Proxy automatic configuration url | |
| **ProxyManualAddress** | Write | String | Proxy manual address | |
| **ProxyManualPort** | Write | UInt32 | Proxy manual port | |
| **ProxySetting** | Write | String | Proxy setting | `none`, `manual`, `automatic` |
| **Ssid** | Write | String | SSID | |
| **WifiSecurityType** | Write | String | Wi-Fi security | `open`, `wpaPersonal`, `wpaEnterprise`, `wep`, `wpa2Personal`, `wpa2Enterprise` |
| **Assignments** | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | |
| **Ensure** | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_DeviceManagementConfigurationPolicyAssignments

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **dataType** | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| **deviceAndAppManagementAssignmentFilterType** | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| **deviceAndAppManagementAssignmentFilterId** | Write | String | The Id of the filter for the target assignment. | |
| **groupId** | Write | String | The group Id that is the target of the assignment. | |
| **groupDisplayName** | Write | String | The group Display Name that is the target of the assignment. | |
| **collectionId** | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



