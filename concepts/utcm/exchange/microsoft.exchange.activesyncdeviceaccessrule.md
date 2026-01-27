---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Active Sync Device Access Rules in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the identity of the device access rule. | - |
| AccessLevel | Write | String | The AccessLevel parameter specifies whether the devices are allowed, blocked or quarantined. | `Allow`, `Block`, `Quarantine` |
| Characteristic | Write | String | The Characteristic parameter specifies the device characteristic or category that's used by the rule. | `DeviceModel`, `DeviceType`, `DeviceOS`, `UserAgent`, `XMSWLHeader` |
| QueryString | Write | String | The QueryString parameter specifies the device identifier that's used by the rule. This parameter uses a text value that's used with Characteristic parameter value to define the device. | - |
| Ensure | Write | String | Specify if the Active Sync Device Access Rule should exist or not. | `Present`, `Absent` |


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

- Organization Client Access, View-Only Configuration

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



