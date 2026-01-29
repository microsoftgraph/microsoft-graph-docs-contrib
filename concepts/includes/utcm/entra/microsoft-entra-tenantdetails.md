---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures the Microsoft Entra Tenant Details


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Only valid value is 'Yes'. | `Yes` |
| MarketingNotificationEmails | Write | StringArray[] | Email-addresses from the people who should receive Marketing Notifications | - |
| SecurityComplianceNotificationMails | Write | StringArray[] | Email-addresses from the people who should receive Security Compliance Notifications | - |
| SecurityComplianceNotificationPhones | Write | StringArray[] | Phone Numbers from the people who should receive Security Notifications | - |
| TechnicalNotificationMails | Write | StringArray[] | Email-addresses from the people who should receive Technical Notifications | - |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Billing Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.ReadWrite.All |



