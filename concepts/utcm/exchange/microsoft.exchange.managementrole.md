---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures RBAC Management Roles in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the name of the role. The maximum length of the name is 64 characters. | - |
| Parent | Key | String | The Parent parameter specifies the identity of the role to copy. Mandatory for management role creation/update or when Ensure=Present. Non-mandatory for Ensure=Absent | - |
| Description | Write | String | The Description parameter specifies the description that's displayed when the management role is viewed using the Get-ManagementRole cmdlet. | - |
| Ensure | Write | String | Specify if the Management Role should exist or not. | `Present`, `Absent` |


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

- Role Management, View-Only Configuration

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



