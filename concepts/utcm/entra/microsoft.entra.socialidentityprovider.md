---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Represents identity providers with External Identities for both Microsoft Entra ID and Microsoft Entra B2C tenants. For Microsoft Entra B2B scenarios in a Microsoft Entra tenant, the identity provider type can be Google or Facebook.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ClientId | Key | String | The client identifier for the application obtained when registering the application with the identity provider. | - |
| ClientSecret | Write | String | The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns ****. | - |
| DisplayName | Write | String | The display name of the identity provider. | - |
| IdentityProviderType | Write | String | For a B2B scenario, possible values: Google, Facebook. For a B2C scenario, possible values: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat. | `AADSignup`, `EmailOTP`, `Microsoft`, `MicrosoftAccount`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat` |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Authentication Policy Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | IdentityProvider.Read.All |
| Update    | IdentityProvider.ReadWrite.All |



