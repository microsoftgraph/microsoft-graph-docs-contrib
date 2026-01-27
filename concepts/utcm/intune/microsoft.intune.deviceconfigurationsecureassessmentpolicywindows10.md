---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Intune Device Configuration Secure Assessment Policy for Windows10


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AllowPrinting | Write | Boolean | Indicates whether or not to allow the app from printing during the test. | - |
| AllowScreenCapture | Write | Boolean | Indicates whether or not to allow screen capture capability during a test. | - |
| AllowTextSuggestion | Write | Boolean | Indicates whether or not to allow text suggestions during the test. | - |
| AssessmentAppUserModelId | Write | String | Specifies the application user model ID of the assessment app launched when a user signs in to a secure assessment with a local guest account. Important notice: this property must be set with localGuestAccountName in order to make the local guest account sign-in experience work properly for secure assessments. | - |
| ConfigurationAccount | Write | String | The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (usernametenant.com) or a local account (username). | - |
| ConfigurationAccountType | Write | String | The account type used to by ConfigurationAccount. Possible values are: azureADAccount, domainAccount, localAccount, localGuestAccount. | `azureADAccount`, `domainAccount`, `localAccount`, `localGuestAccount` |
| LaunchUri | Write | String | Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (https://msdn.microsoft.com/). | - |
| LocalGuestAccountName | Write | String | Specifies the display text for the local guest account shown on the sign-in screen. Typically is the name of an assessment. When the user clicks the local guest account on the sign-in screen, an assessment app is launched with a specified assessment URL. Secure assessments can only be configured with local guest account sign-in on devices running Windows 10, version 1903 or later. Important notice: this property must be set with assessmentAppUserModelID in order to make the local guest account sign-in experience work properly for secure assessments. | - |
| Description | Write | String | Admin provided description of the Device Configuration. | - |
| DisplayName | Key | String | Admin provided name of the device configuration. | - |
| Id | Write | String | The unique identifier for an entity. Read-only. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | - |
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


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



