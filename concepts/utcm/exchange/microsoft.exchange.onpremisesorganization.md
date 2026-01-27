---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures On-Premises Organization in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the identity of the on-premises organization object. | - |
| HybridDomains | Write | StringArray[] | The HybridDomains parameter specifies the domains that are configured in the hybrid deployment between an Office 365 tenant and an on-premises Exchange organization. The domains specified in this parameter must match the domains listed in the HybridConfiguration Active Directory object for the on-premises Exchange organization configured by the Hybrid Configuration wizard.  | - |
| InboundConnector | Write | String | The InboundConnector parameter specifies the name of the inbound connector configured on the Microsoft Exchange Online Protection (EOP) service for a hybrid deployment configured with an on-premises Exchange organization. | - |
| OutboundConnector | Write | String | The OutboundConnector parameter specifies the name of the outbound connector configured on the EOP service for a hybrid deployment configured with an on-premises Exchange organization. | - |
| OrganizationName | Write | String | The OrganizationName parameter specifies the Active Directory object name of the on-premises Exchange organization. | - |
| OrganizationGuid | Write | String | The OrganizationGuid parameter specifies the globally unique identifier (GUID) of the on-premises Exchange organization object in the Office 365 tenant. | - |
| OrganizationRelationship | Write | String | The OrganizationRelationship parameter specifies the organization relationship configured by the Hybrid Configuration wizard on the Office 365 tenant as part of a hybrid deployment with an on-premises Exchange organization. This organization relationship defines the federated sharing features enabled on the Office 365 tenant. | - |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| Ensure | Write | String | Specify if the On-Premises Organization should exist or not. | `Present`, `Absent` |


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

- Remote and Accepted Domains, View-Only Configuration

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



