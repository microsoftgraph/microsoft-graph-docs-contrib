---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Advanced Threat Protection (ATP) policy
in Office 365.  Tenant must be subscribed to ATP.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Specifies that the resource is a single instance, the value must be 'Yes' | `Yes` |
| Identity | Write | String | The Identity parameter specifies the Advanced Threat Protection (ATP) policy that you want to modify. There's only one policy named Default. | - |
| Ensure | Write | String | Since there's only one policy, the default policy, this value must be set to 'Present' | `Present` |
| AllowSafeDocsOpen | Write | Boolean | The AllowSafeDocsOpen parameter specifies whether users can click through and bypass the Protected View container even when Safe Documents identify a file as malicious. | - |
| EnableATPForSPOTeamsODB | Write | Boolean | The EnableATPForSPOTeamsODB parameter specifies whether ATP is enabled for SharePoint Online, OneDrive for Business and Microsoft Teams. The default value is $false. | - |
| EnableSafeDocs | Write | Boolean | The EnableSafeDocs parameter specifies whether to enable the Safe Documents feature in the organization. The default value is $false. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Security Administrator |


### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

#### Roles

- Transport Hygiene, Security Admin, View-Only Configuration, Security Reader

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



