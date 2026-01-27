---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Compliance Tag in Security and Compliance.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the complaiance tag. | - |
| Ensure | Write | String | Specify if this rule should exist or not. | `Present`, `Absent` |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| EventType | Write | String | The EventType parameter specifies the retention rule that's associated with the label. | - |
| IsRecordLabel | Write | Boolean | The IsRecordLabel parameter specifies whether the label is a record label. | - |
| Notes | Write | String | The Notes parameter specifies an optional note. If you specify a value that contains spaces, enclose the value in quotation marks, for example: 'This is a user note' | - |
| Regulatory | Write | Boolean | Regulatory description | - |
| FilePlanProperty | Write | FilePlanProperty | The FilePlanProperty parameter specifies the file plan properties to include in the label. | - |
| ReviewerEmail | Write | StringArray[] | The ReviewerEmail parameter specifies the email address of a reviewer for Delete and KeepAndDelete retention actions. You can specify multiple email addresses separated by commas. | - |
| RetentionDuration | Write | String | The RetentionDuration parameter specifies the hold duration for the retention rule. Valid values are: An integer - The hold duration in days, Unlimited - The content is held indefinitely. | - |
| RetentionAction | Write | String | The RetentionAction parameter specifies the action for the label. Valid values are: Delete, Keep or KeepAndDelete. | `Delete`, `Keep`, `KeepAndDelete` |
| RetentionType | Write | String | The RetentionType parameter specifies whether the retention duration is calculated from the content creation date, tagged date, or last modification date. Valid values are: CreationAgeInDays, EventAgeInDays,ModificationAgeInDays, or TaggedAgeInDays. | `CreationAgeInDays`, `EventAgeInDays`, `ModificationAgeInDays`, `TaggedAgeInDays` |

### FilePlanProperty

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| FilePlanPropertyDepartment | Write | String | File plan department. Can get list by running Get-FilePlanPropertyDepartment. | - |
| FilePlanPropertyAuthority | Write | String | File plan Authority. Can get list by running Get-FilePlanPropertyAuthority. | - |
| FilePlanPropertyCategory | Write | String | File plan category. Can get a list by running Get-FilePlanPropertyCategory. | - |
| FilePlanPropertyCitation | Write | String | File plan citation. Can get a list by running Get-FilePlanPropertyCitation. | - |
| FilePlanPropertyReferenceId | Write | String | File plan reference id. Can get a list by running Get-FilePlanPropertyReferenceId. | - |
| FilePlanPropertySubCategory | Write | String | File plan subcategory. Can get a list by running Get-FilePlanPropertySubCategory. | - |


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

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



