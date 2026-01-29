---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a Security Filter in Security and Compliance.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| FilterName | Key | String | The FilterName parameter specifies the name of the compliance security filter that you want to view. If the value contains spaces, enclose the value in quotation marks ("). | - |
| Action | Write | String | The Action parameter filters the results by the type of search action that a filter is applied to.  | `Export`, `Preview`, `Purge`, `Search`, `All` |
| Users | Write | StringArray[] | The User parameter filters the results by the user who gets a filter applied to their searches. Acceptable values are : The alias or email address of a user, All or The name of a role group | - |
| Description | Write | String | The Description parameter specifies a description for the compliance security filter. The maximum length is 256 characters. If the value contains spaces, enclose the value in quotation marks ("). | - |
| Filters | Write | StringArray[] | The Filters parameter specifies the search criteria for the compliance security filter. The filters are applied to the users specified by the Users parameter. You can create three different types of filters: Mailbox filter, Mailbox content filter or Site and site content filter | - |
| Region | Write | String | The Region parameter specifies the satellite location for multi-geo tenants to conduct eDiscovery searches in. | `APC`, `AUS`, `CAN`, `EUR`, `FRA`, `GBR`, `IND`, `JPN`, `LAM`, `NAM`, `` |
| Ensure | Write | String | Specify if this label policy should exist or not. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


#### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



