---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Applications Access Policies in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the application access policy that you want to modify. | |
| **AccessRight** | Write | String | The AccessRight parameter specifies the permission that you want to assign in the application access policy. | `RestrictAccess`, `DenyAccess` |
| **AppID** | Write | StringArray[] | The AppID parameter specifies the GUID of the apps to include in the policy. | |
| **PolicyScopeGroupId** | Write | String | The PolicyScopeGroupID parameter specifies the recipient to define in the policy. You can use any value that uniquely identifies the recipient. | |
| **Description** | Write | String | The Description parameter specifies a description for the policy. | |
| **Ensure** | Write | String | Specify if the Application Access Policy should exist or not. | `Present`, `Absent` |


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

- View-Only Configuration, Organization Configuration

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



