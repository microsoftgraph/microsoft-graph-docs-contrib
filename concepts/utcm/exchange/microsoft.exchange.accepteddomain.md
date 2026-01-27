---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Accepted Email Domains in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specify the Fully Qualified Domain Name for the AcceptedDomain. | - |
| Ensure | Write | String | Specify if the AcceptedDomain should exist or not. | `Present`, `Absent` |
| DomainType | Write | String | The type of AcceptedDomain.  Currently the EXOAcceptedDomain DSC Resource accepts a value of 'Authoritative' and 'InternalRelay'. | `Authoritative`, `InternalRelay` |
| MatchSubDomains | Write | Boolean | The MatchSubDomains parameter must be false on Authoritative domains. The default value is false. | - |
| OutboundOnly | Write | Boolean | OutboundOnly can only be enabled if the DomainType parameter is set to Authoritative or InternalRelay. The default value is false. | - |


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

- Retention Management, Remote and Accepted Domains, Distribution Groups, View-Only Configuration, Mail Recipients

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



