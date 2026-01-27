---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the settings of the Safe Attachments policies
in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the name of the SafeAttachmentpolicy that you want to modify. | - |
| Action | Write | String | The Action parameter specifies the action for the Safe Attachments policy. | `Block`, `Replace`, `Allow`, `DynamicDelivery` |
| ActionOnError | Write | Boolean | The ActionOnError parameter specifies the error handling option for Safe Attachments scanning (what to do if scanning times out or an error occurs). Valid values are: $true: The action specified by the Action parameter is applied to messages even when the attachments aren't successfully scanned. $false: The action specified by the Action parameter isn't applied to messages when the attachments aren't successfully scanned. This is the default value. | - |
| AdminDisplayName | Write | String | The AdminDisplayName parameter specifies a description for the policy. | - |
| Enable | Write | Boolean | Specify if this policy should be enabled. Default is $true. | - |
| QuarantineTag | Write | String | The QuarantineTag specifies the quarantine policy that's used on messages that are quarantined as malware by Safe Attachments. | - |
| Redirect | Write | Boolean | The Redirect parameter specifies whether to send detected malware attachments to another email address. Valid values are: $true: Malware attachments are sent to the email address specified by the RedirectAddress parameter. $false: Malware attachments aren't sent to another email address. This is the default value. | - |
| RedirectAddress | Write | String | The RedirectAddress parameter specifies the email address where detected malware attachments are sent when the Redirect parameter is set to the value $true. | - |
| Ensure | Write | String | Specify if this policy should exist or not. | `Present`, `Absent` |


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



