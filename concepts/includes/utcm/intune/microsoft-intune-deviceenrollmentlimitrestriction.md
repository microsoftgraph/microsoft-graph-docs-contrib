---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures the Intune device enrollment limit restrictions.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | Display name of the device enrollment limit restriction. | - |
| Description | Write | String | Description of the device enrollment limit restriction. | - |
| Limit | Write | UInt32 | Specifies the maximum number of devices a user can enroll | - |
| Ensure | Write | String | Present ensures the restriction exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | DeviceManagementServiceConfig.Read.All |
| Update    | DeviceManagementServiceConfig.ReadWrite.All |



