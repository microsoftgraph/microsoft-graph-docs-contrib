---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource represents the properties of the Intune Assignment Filter.
For more information: https://docs.microsoft.com/en-us/graph/api/resources/intune-policyset-deviceandappmanagementassignmentfilter?view=graph-rest-beta



## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | DisplayName of the Assignment Filter. | - |
| Identity | Write | String | Key of the Assignment Filter. | - |
| Description | Write | String | Description of the Assignment Filter. | - |
| Platform | Write | String | Platform type of the devices on which the Assignment Filter will be applicable. | `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue` |
| Rule | Write | String | Rule definition of the Assignment Filter. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed | `Present`, `Absent` |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | DeviceManagementConfiguration.Read.All |
| Update    | DeviceManagementConfiguration.ReadWrite.All |



