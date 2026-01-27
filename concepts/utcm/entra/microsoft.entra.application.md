---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an Microsoft Entra Application.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | DisplayName of the app | - |
| ObjectId | Write | String | ObjectID of the app. | - |
| AppId | Write | String | AppId for the app. | - |
| AvailableToOtherTenants | Write | Boolean | Indicates whether this application is available in other tenants. | - |
| Description | Write | String | A free text field to provide a description of the application object to end users. The maximum allowed size is 1,024 characters. | - |
| GroupMembershipClaims | Write | String | A bitmask that configures the groups claim issued in a user or OAuth 2.0 access token that the application expects. | - |
| Homepage | Write | String | The URL to the application's homepage. | - |
| IdentifierUris | Write | StringArray[] | User-defined URIs that uniquely identify a Web application within its Microsoft Entra tenant, or within a verified custom domain. | - |
| IsFallbackPublicClient | Write | Boolean | Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false, which means the fallback application type is confidential client such as web app. There are certain scenarios where Microsoft Entra ID can't determine the client application type. For example, ROPC flow where it is configured without specifying a redirect URI. In those cases, Microsoft Entra ID interprets the application type based on the value of this property. | - |
| KnownClientApplications | Write | StringArray[] | Client applications that are tied to this resource application. | - |
| LogoutURL | Write | String | The logout url for this application. | - |
| PublicClient | Write | Boolean | Specifies whether this application is a public client (such as an installed application running on a mobile device). Default is false. | - |
| ReplyURLs | Write | StringArray[] | Specifies the URLs that user tokens are sent to for sign in, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to. | - |
| Owners | Write | StringArray[] | UPN or ObjectID values of the app's owners. | - |
| Ensure | Write | String | Specify if the Microsoft Entra App should exist or not. | `Present`, `Absent` |
| Permissions | Write | ApplicationPermission[] | API permissions for the Microsoft Entra Application. | - |

#### ApplicationPermission

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Write | String | Name of the requested permission. | - |
| SourceAPI | Write | String | Name of the API from which the permission comes from. | - |
| Type | Write | String | Type of permission. | `AppOnly`, `Delegated` |
| AdminConsentGranted | Write | Boolean | Represents whether or not the Admin consent has been granted on the app. | - |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | None |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Application.Read.All, Policy.Read.All |
| Update    | Application.ReadWrite.All, User.Read.All |



