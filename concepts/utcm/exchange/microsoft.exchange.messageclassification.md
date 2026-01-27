---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Create a new Message Classification policy in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the OME Configuration policy that you want to modify. | |
| **ClassificationID** | Write | String | The ClassificationID parameter specifies the classification ID (GUID) of an existing message classification that you want to import and use in your Exchange organization. | |
| **DisplayName** | Write | String | The DisplayName parameter specifies the title of the message classification that's displayed in Outlook and selected by users. | |
| **DisplayPrecedence** | Write | String | The DisplayPrecedence parameter specifies the relative precedence of the message classification to other message classifications that may be applied to a specified message. | `Highest`, `Higher`, `High`, `MediumHigh`, `Medium`, `MediumLow`, `Low`, `Lower`, `Lowest` |
| **Name** | Write | String | The Name parameter specifies the unique name for the message classification. | |
| **PermissionMenuVisible** | Write | Boolean | The PermissionMenuVisible parameter specifies whether the values that you entered for the DisplayName and RecipientDescription parameters are displayed in Outlook as the user composes a message.  | |
| **RecipientDescription** | Write | String | The RecipientDescription parameter specifies the detailed text that's shown to Outlook recipient when they receive a message that has the message classification applied. | |
| **RetainClassificationEnabled** | Write | Boolean | The RetainClassificationEnabled parameter specifies whether the message classification should persist with the message if the message is forwarded or replied to. | |
| **SenderDescription** | Write | String | The SenderDescription parameter specifies the detailed text that's shown to Outlook senders when they select a message classification to apply to a message before they send the message.  | |
| **Ensure** | Write | String | Specifies if this Outbound connector should exist. | `Present`, `Absent` |


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

- User Options, Data Loss Prevention, Transport Rules, View-Only Configuration, Mail Recipients

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



