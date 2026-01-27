---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create a new EXOIntraOrganizationConnector in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the intraorg connector that you want to modify. | - |
| DiscoveryEndpoint | Write | String | The DiscoveryEndpoint parameter specifies the externally-accessible URL that's used for the Autodiscover service for the domain that's configured in the Intra-Organization connector. | - |
| Enabled | Write | Boolean | Specifies whether connector is enabled. | - |
| TargetAddressDomains | Write | StringArray[] | The TargetAddressDomains parameter specifies the domain namespaces that will be used in the Intra-organization connector. These domains must have valid Autodiscover endpoints defined in their organizations. The domains and their associated Autodiscover endpoints are used by the Intra-Organization connector for feature and service connectivity. You can specify multiple domains separated by commas. | - |
| TargetSharingEpr | Write | String | The TargetSharingEpr parameter specifies the URL of the target Exchange Web Services that will be used in the Intra-Organization connector. | - |
| Ensure | Write | String | Specifies if this Intra-Organization connector should exist. | `Present`, `Absent` |


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

- Federated Sharing, Organization Transport Settings, View-Only Configuration, Mail Tips, Message Tracking

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



