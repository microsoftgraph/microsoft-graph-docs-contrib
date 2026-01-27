---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Microsoft Entra ServicePrincipal.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AppId | Key | String | The unique identifier for the associated application. | - |
| AppRoleAssignedTo | Write | ServicePrincipalRoleAssignment[] | App role assignments for this app or service, granted to users, groups, and other service principals. | - |
| ObjectID | Write | String | The ObjectID of the ServicePrincipal | - |
| DisplayName | Write | String | Displayname of the ServicePrincipal. | - |
| AlternativeNames | Write | StringArray[] | The alternative names for this service principal | - |
| AccountEnabled | Write | Boolean | True if the service principal account is enabled; otherwise, false. | - |
| AppRoleAssignmentRequired | Write | Boolean | Indicates whether an application role assignment is required. | - |
| ErrorUrl | Write | String | Specifies the error URL of the ServicePrincipal. | - |
| Homepage | Write | String | Specifies the homepage of the ServicePrincipal. | - |
| LogoutUrl | Write | String | Specifies the LogoutURL of the ServicePrincipal. | - |
| PublisherName | Write | String | Specifies the PublisherName of the ServicePrincipal. | - |
| ReplyUrls | Write | StringArray[] | The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. | - |
| SamlMetadataUrl | Write | String | The URL for the SAML metadata of the ServicePrincipal. | - |
| ServicePrincipalNames | Write | StringArray[] | Specifies an array of service principal names. Based on the identifierURIs collection, plus the application's appId property, these URIs are used to reference an application's service principal. | - |
| ServicePrincipalType | Write | String | The type of the service principal. | - |
| Tags | Write | StringArray[] | Tags linked to this service principal.Note that if you intend for this service principal to show up in the All Applications list in the admin portal, you need to set this value to {WindowsAzureActiveDirectoryIntegratedApp} | - |
| Ensure | Write | String | Specify if the Microsoft Entra App should exist or not. | `Present`, `Absent` |

### ServicePrincipalRoleAssignment

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| PrincipalType | Write | String | Type of principal. Accepted values are User or Group | `Group`, `User` |
| Identity | Write | String | Unique identity representing the principal. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Application Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Application.Read.All, Group.Read.All, User.Read.All |
| Update    | Application.ReadWrite.All, Group.Read.All, User.Read.All |



