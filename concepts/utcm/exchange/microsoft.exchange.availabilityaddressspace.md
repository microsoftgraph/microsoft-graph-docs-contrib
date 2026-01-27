---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create a new AvailabilityAddressSpace in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the AvailabilityAddressSpace you want to modify. | - |
| AccessMethod | Write | String | The AccessMethod parameter specifies how the free/busy data is accessed. Valid values are:PerUserFB, OrgWideFB, OrgWideFBToken, OrgWideFBBasic,InternalProxy | `PerUserFB`, `OrgWideFB`, `OrgWideFBToken`, `OrgWideFBBasic`, `InternalProxy` |
| Credentials | Write | String | The Credentials parameter specifies the username and password that's used to access the Availability services in the target forest. | - |
| ForestName | Write | String | The ForestName parameter specifies the SMTP domain name of the target forest for users whose free/busy data must be retrieved. If your users are distributed among multiple SMTP domains in the target forest, run the Add-AvailabilityAddressSpace command once for each SMTP domain. | - |
| TargetAutodiscoverEpr | Write | String | The TargetAutodiscoverEpr parameter specifies the Autodiscover URL of Exchange Web Services for the external organization. Exchange uses Autodiscover to automatically detect the correct server endpoint for external requests. | - |
| TargetServiceEpr | Write | String | The TargetServiceEpr parameter specifies the Exchange Online Calendar Service URL of the external Microsoft 365 organization that you're trying to read free/busy information from. | - |
| TargetTenantId | Write | String | The TargetTenantID parameter specifies the tenant ID of the external Microsoft 365 organization that you're trying to read free/busy information from. | - |
| Ensure | Write | String | Specifies if this AvailabilityAddressSpace should exist. | `Present`, `Absent` |


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

- Federated Sharing, Mail Tips, Message Tracking

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



