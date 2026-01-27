---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Sensitivity label policy in Security and Compliance.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Name** | Key | String | The Name parameter specifies the unique name for the sensitivity label. The maximum length is 64 characters. If the value contains spaces, enclose the value in quotation marks. | |
| **Ensure** | Write | String | Specify if this label policy should exist or not. | `Present`, `Absent` |
| **Comment** | Write | String | The Comment parameter specifies an optional comment. | |
| **AdvancedSettings** | Write | LabelSetting[] | The AdvancedSettings parameter enables client-specific features and capabilities on the sensitivity label. The settings that you configure with this parameter only affect apps that are designed for the setting. | |
| **ExchangeLocation** | Write | StringArray[] | The ExchangeLocation parameter specifies the mailboxes to include in the policy. | |
| **ExchangeLocationException** | Write | StringArray[] | The ExchangeLocationException parameter specifies the mailboxes to exclude when you use the value All for the ExchangeLocation parameter. | |
| **ModernGroupLocation** | Write | StringArray[] | The ModernGroupLocation parameter specifies the Microsoft 365 Groups to include in the policy. | |
| **ModernGroupLocationException** | Write | StringArray[] | The ModernGroupLocationException parameter specifies the Microsoft 365 Groups to exclude when you're using the value All for the ModernGroupLocation parameter. | |
| **Labels** | Write | StringArray[] | The Labels parameter specifies the sensitivity labels that are associated with the policy. You can use any value that uniquely identifies the label. | |
| **AddExchangeLocation** | Write | StringArray[] | The AddExchangeLocation parameter specifies the mailboxes to add in the existing policy. | |
| **AddExchangeLocationException** | Write | StringArray[] | The AddExchangeLocationException parameter specifies the mailboxes to add to exclusions when you use the value All for the ExchangeLocation parameter. | |
| **AddModernGroupLocation** | Write | StringArray[] | The AddModernGroupLocation parameter specifies the Microsoft 365 Groups to add to include the policy. | |
| **AddModernGroupLocationException** | Write | StringArray[] | The AddModernGroupLocationException parameter specifies the Microsoft 365 Groups to add to exclusions when you're using the value All for the ModernGroupLocation parameter. | |
| **AddLabels** | Write | StringArray[] | The AddLabels parameter specifies the sensitivity labels to add to the policy. You can use any value that uniquely identifies the label. | |
| **RemoveExchangeLocation** | Write | StringArray[] | The RemoveExchangeLocation parameter specifies the mailboxes to remove from the policy. | |
| **RemoveExchangeLocationException** | Write | StringArray[] | The RemoveExchangeLocationException parameter specifies the mailboxes to remove when you use the value All for the ExchangeLocation parameter. | |
| **RemoveModernGroupLocation** | Write | StringArray[] | The RemoveModernGroupLocation parameter specifies the Microsoft 365 Groups to remove from the policy. | |
| **RemoveModernGroupLocationException** | Write | StringArray[] | The RemoveModernGroupLocationException parameter specifies the Microsoft 365 Groups to remove from excluded values when you're using the value All for the ModernGroupLocation parameter. | |
| **RemoveLabels** | Write | StringArray[] | The RemoveLabels parameter specifies the sensitivity labels that are removed from the policy. You can use any value that uniquely identifies the label. | |

### LabelSetting

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Key** | Write | String | Advanced settings key. | |
| **Value** | Write | StringArray[] | Advanced settings value. | |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



