---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a eDiscovery Case Policy
in Security and Compliance Center.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the case hold policy. | - |
| Case | Key | String | The Case parameter specifies the eDiscovery case that you want to associate with the case hold policy. | - |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| Enabled | Write | Boolean | The Enabled parameter specifies whether the policy is enabled or disabled. | - |
| ExchangeLocation | Write | StringArray[] | The ExchangeLocation parameter specifies the mailboxes to include in the policy. | - |
| PublicFolderLocation | Write | StringArray[] | The PublicFolderLocation parameter specifies that you want to include all public folders in the case hold policy. You use the value All for this parameter. | - |
| SharePointLocation | Write | StringArray[] | The SharePointLocation parameter specifies the SharePoint Online and OneDrive for Business sites to include. You identify a site by its URL value. | - |
| Ensure | Write | String | Specify if this policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



