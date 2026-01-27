---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Email address policies in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the email address policy. The maximum length is 64 characters. | - |
| Priority | Write | String | The Priority parameter specifies the order that the email address policies are evaluated. By default, every time that you add a new email address policy, the policy is assigned a priority of N+1, where N is the number of email address policies that you've created. | - |
| EnabledEmailAddressTemplates | Write | StringArray[] | The EnabledEmailAddressTemplates parameter specifies the rules in the email address policy that are used to generate email addresses for recipients. | - |
| EnabledPrimarySMTPAddressTemplate | Write | StringArray[] | The EnabledPrimarySMTPAddressTemplate parameter specifies the specifies the rule in the email address policy that's used to generate the primary SMTP email addresses for recipients. You can use this parameter instead of the EnabledEmailAddressTemplates if the policy only applies the primary email address and no additional proxy addresses. | - |
| ManagedByFilter | Write | String | The ManagedByFilter parameter specifies the email address policies to apply to Office 365 groups based on the properties of the users who create the Office 365 groups. | - |
| Ensure | Write | String | Specify if the Email Address Policy should exist or not. | `Present`, `Absent` |


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

- E-Mail Address Policies

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



