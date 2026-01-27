---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create a new data classification policy in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the data classification rule that you want to modify. | - |
| Description | Write | String | The Description parameter specifies a description for the data classification rule. You use the Description parameter with the Locale and Name parameters to specify descriptions for the data classification rule in different languages.  | - |
| Fingerprints | Write | StringArray[] | The Fingerprints parameter specifies the byte-encoded document files that are used as fingerprints by the data classification rule. | - |
| IsDefault | Write | Boolean | IsDefault is used with the Locale parameter to specify the default language for the data classification rule. | - |
| Locale | Write | String | The Locale parameter adds or removes languages that are associated with the data classification rule. | - |
| Name | Write | String | The Name parameter specifies a name for the data classification rule. The value must be less than 256 characters. | - |
| Ensure | Write | String | Specifies if this policy should exist. | `Present`, `Absent` |


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

- Data Loss Prevention, View-Only Configuration

#### Role Groups

- Organization Management, Compliance Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



