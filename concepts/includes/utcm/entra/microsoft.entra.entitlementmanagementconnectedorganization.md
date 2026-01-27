---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an Microsoft Entra Entitlement Management Connected Organization.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | The display name of the connected organization. | - |
| Id | Write | String | The Id of the Connected organization object. | - |
| Description | Write | String | The description of the connected organization. | - |
| IdentitySources | Write | EntitlementManagementConnectedOrganizationIdentitySource[] | The identity sources in this connected organization. | - |
| State | Write | String | The state of a connected organization defines whether assignment policies with requestor scope type AllConfiguredConnectedOrganizationSubjects are applicable or not. | `configured`, `proposed`, `unknownFutureValue` |
| ExternalSponsors | Write | StringArray[] | Collection of objectID of external sponsors. the sponsor can be a user or a group. | - |
| InternalSponsors | Write | StringArray[] | Collection of objectID of internal sponsors. the sponsor can be a user or a group. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

#### EntitlementManagementConnectedOrganizationIdentitySource

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| odataType | Write | String | Type of the identity source. | `#microsoft.graph.azureActiveDirectoryTenant`, `#microsoft.graph.crossCloudAzureActiveDirectoryTenant`, `#microsoft.graph.domainIdentitySource`, `#microsoft.graph.externalDomainFederation` |
| DisplayName | Write | String | The name of the Microsoft Entra tenant. | - |
| ExternalTenantId | Write | String | The ID of the Microsoft Entra tenant. | - |
| CloudInstance | Write | String | The ID of the cloud where the tenant is located, one of microsoftonline.com, microsoftonline.us, or partner.microsoftonline.cn. | - |
| DomainName | Write | String | The domain name. | - |
| IssuerUri | Write | String | The issuerURI of the incoming federation. | - |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Identity Governance Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | EntitlementManagement.Read.All |
| Update    | EntitlementManagement.ReadWrite.All, Directory.Read.All |



