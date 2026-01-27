---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures Role Groups in Exchange Online.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the name of the role. The maximum length of the name is 64 characters. | - |
| Description | Write | String | The Description parameter specifies the description that's displayed when the role group is viewed using the Get-RoleGroup cmdlet. Enclose the description in quotation marks | - |
| Members | Write | StringArray[] | The Members parameter specifies the mailboxes or mail-enabled USGs to add as a member of the role group. You can identify the user or group by the name, DN, or primary SMTP address value. You can specify multiple members separated by commas (Value1,Value2,...ValueN). If the value contains spaces, enclose the value in quotation marks | - |
| Roles | Write | StringArray[] | The Roles parameter specifies the management roles to assign to the role group when it's created. If a role name contains spaces, enclose the name in quotation marks. If you want to assign more that one role, separate the role names with commas. | - |
| Ensure | Write | String | Specify if the Role Group should exist or not. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Exchange Administrator |


#### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

##### Roles

- Role Management, View-Only Configuration

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



