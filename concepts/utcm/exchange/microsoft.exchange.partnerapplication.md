---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Partner Applications in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies a new name for the partner application. | - |
| ApplicationIdentifier | Write | String | The ApplicationIdentifier parameter specifies a unique application identifier for the partner application that uses an authorization server. | - |
| AcceptSecurityIdentifierInformation | Write | Boolean | The AcceptSecurityIdentifierInformation parameter specifies whether Exchange should accept security identifiers (SIDs) from another trusted Active Directory forest for the partner application. | - |
| AccountType | Write | String | The AccountType parameter specifies the type of Microsoft account that's required for the partner application. | `OrganizationalAccount`, `ConsumerAccount` |
| Enabled | Write | Boolean | The Enabled parameter specifies whether the partner application is enabled. | - |
| LinkedAccount | Write | String | The LinkedAccount parameter specifies a linked Active Directory user account for the application. | - |
| Ensure | Write | String | Specify if the Partner Application should exist or not. | `Present`, `Absent` |


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

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



