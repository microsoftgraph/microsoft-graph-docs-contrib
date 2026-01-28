---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Create a new Data Encryption policy in your cloud-based organization.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the data encryption policy that you want to modify. | - |
| AzureKeyIDs | Write | StringArray[] | The AzureKeyIDs parameter specifies the URI values of the Azure Key Vault keys to associate with the data encryption policy. | - |
| Description | Write | String | The Description parameter specifies an optional description for the data encryption policy | - |
| Enabled | Write | Boolean | The Enabled parameter enables or disable the data encryption policy. | - |
| Name | Write | String | The Name parameter specifies the unique name for the data encryption policy. | - |
| PermanentDataPurgeContact | Write | String | The PermanentDataPurgeContact parameter specifies a contact for the purge of all data that's encrypted by the data encryption policy. | - |
| PermanentDataPurgeReason | Write | String | The PermanentDataPurgeReason parameter specifies a descriptive reason for the purge of all data that's encrypted by the data encryption policy | - |
| Ensure | Write | String | Specifies if this policy should exist. | `Present`, `Absent` |


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

- Recipient Policies, Mail Recipient Creation, View-Only Configuration

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



