---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Intune device cleanup rule.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Only valid value is 'Yes'. | `Yes` |
| Enabled | Key | Boolean | Indicates whether the cleanup rule is enabled. | - |
| DeviceInactivityBeforeRetirementInDays | Write | UInt32 | Number of days until Intune devices are deleted. Minimum: 30, Maximum: 270. | - |
| Ensure | Write | String | Present ensures the category exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | DeviceManagementManagedDevices.Read.All |
| Update    | DeviceManagementManagedDevices.ReadWrite.All |



