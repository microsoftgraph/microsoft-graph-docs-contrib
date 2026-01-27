---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Role Assignment Policies in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the new name of the assignment policy. The maximum length is 64 characters. | - |
| Description | Write | String | The Description parameter specifies the description that's displayed when the role assignment policy is viewed using the Get-RoleAssignmentPolicy cmdlet. | - |
| IsDefault | Write | Boolean | The IsDefault switch makes the assignment policy the default assignment policy. | - |
| Roles | Write | StringArray[] | The Roles parameter specifies the management roles to assign to the role assignment policy when it's created. | - |
| Ensure | Write | String | Specify if the Role Assignment Policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Exchange Administrator |


### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

#### Roles

- Role Management, Mail Recipient Creation, View-Only Configuration, Mail Recipients

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



