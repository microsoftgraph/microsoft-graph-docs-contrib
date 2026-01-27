---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create or modify a EXOQuarantinePolicy in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the QuarantinePolicy you want to modify. | |
| **EndUserQuarantinePermissionsValue** | Write | UInt32 | The EndUserQuarantinePermissionsValue parameter specifies the end-user permissions for the quarantine policy. | |
| **ESNEnabled** | Write | Boolean | The ESNEnabled parameter specifies whether to enable quarantine notifications (formerly known as end-user spam notifications) for the policy. | |
| **MultiLanguageCustomDisclaimer** | Write | StringArray[] | The MultiLanguageCustomDisclaimer parameter specifies the custom disclaimer text to use near the bottom of quarantine notifications. | |
| **MultiLanguageSenderName** | Write | StringArray[] | The MultiLanguageSenderName parameter specifies the email sender's display name to use in quarantine notifications. | |
| **MultiLanguageSetting** | Write | StringArray[] | The MultiLanguageSetting parameter specifies the language of quarantine notifications. | |
| **OrganizationBrandingEnabled** | Write | Boolean | The OrganizationBrandingEnabled parameter enables or disables organization branding in the end-user quarantine notification messages. | |
| **Ensure** | Write | String | Specifies if this QuarantinePolicy should exist. | `Present`, `Absent` |
| **EndUserSpamNotificationFrequency** | Write | String | The EndUserSpamNotificationFrequency parameter species how often quarantine notifications are sent to users. Valid values are: 04:00:00 (4 hours),1.00:00:00 (1 day),7.00:00:00 (7 days) | |
| **QuarantinePolicyType** | Write | String | The QuarantinePolicyType parameter filters the results by the specified quarantine policy type. Valid values are: QuarantinePolicy, GlobalQuarantinePolicy | |
| **EndUserSpamNotificationFrequencyInDays** | Write | String | This parameter is reserved for internal Microsoft use. | |
| **CustomDisclaimer** | Write | String | This parameter is reserved for internal Microsoft use. | |
| **EndUserSpamNotificationCustomFromAddress** | Write | String | The EndUserSpamNotificationCustomFromAddress specifies the email address of an existing internal sender to use as the sender for quarantine notifications. To set this parameter back to the default email address quarantine@messaging.microsoft.com, use the value $null. | |
| **EsnCustomSubject** | Write | StringArray[] | The EsnCustomSubject parameter specifies the text to use in the Subject field of quarantine notifications.This setting is available only in the built-in quarantine policy named DefaultGlobalTag that controls global quarantine policy settings. | |


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



