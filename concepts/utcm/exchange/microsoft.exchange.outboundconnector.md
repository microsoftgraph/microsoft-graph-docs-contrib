---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create a new Inbound connector in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the outbound connector that you want to modify. | - |
| Enabled | Write | Boolean | Specifies whether connector is enabled. | - |
| UseMXRecord | Write | Boolean | Specifies whether connector should use MXRecords for target resolution. | - |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| ConnectorSource | Write | String | The ConnectorSource parameter specifies how the connector is created. DO NOT CHANGE THIS! | `Default`, `Migrated`, `HybridWizard` |
| ConnectorType | Write | String | The ConnectorType parameter specifies a category for the domains that are serviced by the connector. | `Partner`, `OnPremises` |
| RecipientDomains | Write | StringArray[] | The RecipientDomains parameter specifies the domain that the Outbound connector routes mail to. You can specify multiple domains separated by commas. | - |
| SmartHosts | Write | StringArray[] | The SmartHosts parameter specifies the smart hosts the Outbound connector uses to route mail. This parameter is required if you set the UseMxRecord parameter to $false and must be specified on the same command line. | - |
| TlsDomain | Write | String | The TlsDomain parameter specifies the domain name that the Outbound connector uses to verify the FQDN of the target certificate when establishing a TLS secured connection. This parameter is only used if the TlsSettings parameter is set to DomainValidation. Valid input for the TlsDomain parameter is an SMTP domain. You can use a wildcard character to specify all subdomains of a specified domain, as shown in the following example: *.contoso.com. However, you can't embed a wildcard character, as shown in the following example: domain.*.contoso.com | - |
| TlsSettings | Write | String | The TlsSettings parameter specifies the TLS authentication level that's used for outbound TLS connections established by this Outbound connector. | `EncryptionOnly`, `CertificateValidation`, `DomainValidation` |
| IsTransportRuleScoped | Write | Boolean | The IsTransportRuleScoped parameter specifies whether the Outbound connector is associated with a transport rule (also known as a mail flow rule). | - |
| RouteAllMessagesViaOnPremises | Write | Boolean | The RouteAllMessagesViaOnPremises parameter specifies that all messages serviced by this connector are first routed through the on-premises messaging system (Centralized mailrouting). | - |
| CloudServicesMailEnabled | Write | Boolean | The CloudServicesMailEnabled parameter specifies whether the connector is used for hybrid mail flow between an on-premises Exchange environment and Microsoft Office 365. Specifically, this parameter controls how certain internal X-MS-Exchange-Organization-* message headers are handled in messages that are sent between accepted domains in the on-premises and cloud organizations. These headers are collectively known as cross-premises headers. DO NOT USE MANUALLY! | - |
| AllAcceptedDomains | Write | Boolean | The AllAcceptedDomains parameter specifies whether the Outbound connector is used in hybrid organizations where message recipients are in accepted domains of the cloud-based organization. | - |
| SenderRewritingEnabled | Write | Boolean | The SenderRewritingEnabled parameter specifies that all messages that normally qualify for SRS rewriting are rewritten for routing through the on-premises email system. | - |
| TestMode | Write | Boolean | The TestMode parameter specifies whether you want to enabled or disable test mode for the Outbound connector. | - |
| ValidationRecipients | Write | StringArray[] | The ValidationRecipients parameter specifies the email addresses of the validation recipients for the Outbound connector. You can specify multiple email addresses separated by commas. | - |
| Ensure | Write | String | Specifies if this Outbound connector should exist. | `Present`, `Absent` |


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

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



