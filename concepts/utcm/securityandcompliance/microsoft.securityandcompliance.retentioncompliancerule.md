---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Retention Compliance Rule in Security and Compliance.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the retention rule. | - |
| Policy | Required | String | The Policy parameter specifies the policy to contain the rule. | - |
| Ensure | Write | String | Specify if this rule should exist or not. | `Present`, `Absent` |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| ExpirationDateOption | Write | String | The ExpirationDateOption parameter specifies whether the expiration date is calculated from the content creation date or last modification date. Valid values are: CreationAgeInDays and ModificationAgeInDays. | `CreationAgeInDays`, `ModificationAgeInDays` |
| ExcludedItemClasses | Write | StringArray[] | The ExcludedItemClasses parameter specifies the types of messages to exclude from the rule. You can use this parameter only to exclude items from a hold policy, which excludes the specified item class from being held. Using this parameter won't exclude items from deletion policies. Typically, you use this parameter to exclude voicemail messages, IM conversations, and other Skype for Business Online content from being held by a hold policy. | - |
| ContentMatchQuery | Write | String | The ContentMatchQuery parameter specifies a content search filter. | - |
| RetentionComplianceAction | Write | String | The RetentionComplianceAction parameter specifies the retention action for the rule. Valid values are: Delete, Keep and KeepAndDelete. | `Delete`, `Keep`, `KeepAndDelete` |
| RetentionDuration | Write | String | The RetentionDuration parameter specifies the hold duration for the retention rule. Valid values are: An integer - The hold duration in days, Unlimited - The content is held indefinitely. | - |
| RetentionDurationDisplayHint | Write | String | The RetentionDurationDisplayHint parameter specifies the units that are used to display the retention duration in the Security and Compliance Center. Valid values are: Days, Months or Years. | `Days`, `Months`, `Years` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



