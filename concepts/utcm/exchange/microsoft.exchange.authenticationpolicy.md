---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Authentication Policies in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the authentication policy you want to view or modify. | |
| **AllowBasicAuthActiveSync** | Write | Boolean | The AllowBasicAuthActiveSync switch specifies whether to allow Basic authentication with Exchange Active Sync. | |
| **AllowBasicAuthAutodiscover** | Write | Boolean | The AllowBasicAuthAutodiscover switch specifies whether to allow Basic authentication with Autodiscover. | |
| **AllowBasicAuthImap** | Write | Boolean | The AllowBasicAuthImap switch specifies whether to allow Basic authentication with IMAP. | |
| **AllowBasicAuthMapi** | Write | Boolean | The AllowBasicAuthMapi switch specifies whether to allow Basic authentication with MAPI. | |
| **AllowBasicAuthOfflineAddressBook** | Write | Boolean | The AllowBasicAuthOfflineAddressBook switch specifies whether to allow Basic authentication with Offline Address Books. | |
| **AllowBasicAuthOutlookService** | Write | Boolean | The AllowBasicAuthOutlookService switch specifies whether to allow Basic authentication with the Outlook service. | |
| **AllowBasicAuthPop** | Write | Boolean | The AllowBasicAuthPop switch specifies whether to allow Basic authentication with POP. | |
| **AllowBasicAuthPowershell** | Write | Boolean | The AllowBasicAuthPowerShell switch specifies whether to allow Basic authentication with PowerShell. | |
| **AllowBasicAuthReportingWebServices** | Write | Boolean | The AllowBasicAuthReporting Web Services switch specifies whether to allow Basic authentication with reporting web services. | |
| **AllowBasicAuthRpc** | Write | Boolean | The AllowBasicAuthRpc switch specifies whether to allow Basic authentication with RPC. | |
| **AllowBasicAuthSmtp** | Write | Boolean | The AllowBasicAuthSmtp switch specifies whether to allow Basic authentication with SMTP. | |
| **AllowBasicAuthWebServices** | Write | Boolean | The AllowBasicAuthWebServices switch specifies whether to allow Basic authentication with Exchange Web Services (EWS). | |
| **Ensure** | Write | String | Specify if the authentication Policy should exist or not. | `Present`, `Absent` |


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

- View-Only Configuration, Organization Configuration, Recipient Policies

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



