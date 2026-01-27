---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the settings of connection filter policies
in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the Hosted Connection Filter Policy that you want to modify. | - |
| AdminDisplayName | Write | String | The AdminDisplayName parameter specifies a description for the policy. | - |
| EnableSafeList | Write | Boolean | The EnableSafeList parameter enables or disables use of the safe list. The safe list is a dynamic allow list in the Microsoft datacenter that requires no customer configuration. Valid input for this parameter is $true or $false. The default value is $false. | - |
| IPAllowList | Write | StringArray[] | The IPAllowList parameter specifies IP addresses from which messages are always allowed. Messages from the IP addresses you specify won't be identified as spam, despite any other spam characteristics of the messages. Valid values for this parameter are: A single IP address, an IP address range, a CIDR IP. | - |
| IPBlockList | Write | StringArray[] | The IPBlockList parameter specifies IP addresses from which messages are never allowed. Messages from the IP addresses you specify are blocked without any further spam scanning. Valid values for this parameter are: A single IP address, an IP address range, a CIDR IP. | - |
| MakeDefault | Write | Boolean | The MakeDefault parameter makes the specified policy the default connection filter policy. Default is $false. | - |
| Ensure | Write | String | Specifies if this Hosted Connection Filter Policy should exist. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Security Administrator |


### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

#### Roles

- Transport Hygiene, Security Admin, View-Only Configuration, Security Reader

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



