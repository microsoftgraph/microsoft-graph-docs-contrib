---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Intune device categories.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | Display name of the device category. | - |
| Description | Write | String | Description of the device category. | - |
| Ensure | Write | String | Present ensures the category exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | DeviceManagementManagedDevices.Read.All |
| Update    | DeviceManagementManagedDevices.ReadWrite.All |



