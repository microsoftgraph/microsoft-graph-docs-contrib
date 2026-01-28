---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an eDiscovery Case Hold Rule
in Security and Compliance.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies a unique name for the case hold rule. | - |
| Policy | Key | String | The Policy parameter specifies the case hold policy that contains the rule. You can use any value that uniquely identifies the policy. | - |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| ContentMatchQuery | Write | String | The ContentMatchQuery parameter specifies a content search filter. Use this parameter to create a query-based hold so only the content that matches the specified search query is placed on hold. This parameter uses a text search string or a query that's formatted by using the Keyword Query Language (KQL). | - |
| Disabled | Write | Boolean | The Disabled parameter specifies whether the case hold rule is enabled or disabled. | - |
| Ensure | Write | String | Present ensures the rule exists, absent ensures it's removed | `Present`, `Absent` |


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



