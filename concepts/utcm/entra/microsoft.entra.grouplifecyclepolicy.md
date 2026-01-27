---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Microsoft Entra Group Lifecycle Policy (for example, Expiration).


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Only valid value is 'Yes.' | `Yes` |
| GroupLifetimeInDays | Required | UInt32 | The number of days a group can exist before it needs to be renewed. | - |
| ManagedGroupTypes | Required | String | This parameter allows the admin to select which office 365 groups the policy applies to. 'None' creates the policy in a disabled state. 'All' applies the policy to every Office 365 group in the tenant. 'Selected' allows the admin to choose specific Office 365 groups that the policy applies to. | `All`, `None`, `Selected` |
| AlternateNotificationEmails | Required | StringArray[] | Notification emails for groups that have no owners are sent to these email addresses. | - |
| Ensure | Write | String | Specify if the Microsoft Entra Groups Lifecycle Policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Groups Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Directory.Read.All |
| Update    | Directory.ReadWrite.All |



