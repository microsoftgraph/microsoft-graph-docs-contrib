---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the DomainKeys Identified Mail (DKIM) signing policy
settings for domains in a cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the DKIM signing policy that you want to modify.  This should be the FQDN.  | |
| **AdminDisplayName** | Write | String | The AdminDisplayName parameter specifies a description for the policy. | |
| **BodyCanonicalization** | Write | String | The BodyCanonicalization parameter specifies the canonicalization algorithm that's used to create and verify the message body part of the DKIM signature. This value effectively controls the sensitivity of DKIM to changes to the message body in transit. Valid values are 'Simple' or 'Relaxed'.  'Relaxed' is the default. | `Simple`, `Relaxed` |
| **HeaderCanonicalization** | Write | String | The HeaderCanonicalization parameter specifies the canonicalization algorithm that's used to create and verify the message header part of the DKIM signature. This value effectively controls the sensitivity of DKIM to changes to the message headers in transit. Valid values are 'Simple' or 'Relaxed'.  'Relaxed' is the default. | `Simple`, `Relaxed` |
| **KeySize** | Write | UInt16 | The KeySize parameter specifies the size in bits of the public key that's used in the DKIM signing policy. Valid values are 1024 and 2048 | `1024`, `2048` |
| **Enabled** | Write | Boolean | The Enabled parameter specifies whether the DKIM Signing Configuration is enabled or disabled. Default is $true. | |
| **Ensure** | Write | String | Specifies if this Client Access Rule should exist. | `Present`, `Absent` |


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

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



