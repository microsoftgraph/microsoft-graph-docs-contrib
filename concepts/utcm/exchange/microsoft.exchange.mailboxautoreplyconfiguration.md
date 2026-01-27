---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Auto Reply settings of mailboxes.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the mailbox that you want to modify. You can use any value that uniquely identifies the mailbox. | |
| **Owner** | Write | String | User Principal Name of the mailbox owner | |
| **AutoDeclineFutureRequestsWhenOOF** | Write | Boolean | The AutoDeclineFutureRequestsWhenOOF parameter specifies whether to automatically decline new meeting requests that are sent to the mailbox during the scheduled time period when Automatic Replies are being sent.  | |
| **AutoReplyState** | Write | String | The AutoReplyState parameter specifies whether the mailbox is enabled for Automatic Replies. Valid values are: Enabled, Disabled, Scheduled | `Enabled`, `Disabled`, `Scheduled` |
| **CreateOOFEvent** | Write | Boolean | The CreateOOFEvent parameter specifies whether to create a calendar event that corresponds to the scheduled time period when Automatic Replies are being sent for the mailbox. | |
| **DeclineAllEventsForScheduledOOF** | Write | Boolean | The DeclineAllEventsForScheduledOOF parameter specifies whether to decline all existing calendar events in the mailbox during the scheduled time period when Automatic Replies are being sent. | |
| **DeclineEventsForScheduledOOF** | Write | Boolean | The DeclineEventsForScheduledOOF parameter specifies whether it's possible to decline existing calendar events in the mailbox during the scheduled time period when Automatic Replies are being sent.  | |
| **DeclineMeetingMessage** | Write | String | The DeclineMeetingMessage parameter specifies the text in the message when meetings requests that are sent to the mailbox are automatically declined. | |
| **EndTime** | Write | String | The EndTime parameter specifies the end date and time that Automatic Replies are sent for the mailbox. You use this parameter only when the AutoReplyState parameter is set to Scheduled, and the value of this parameter is meaningful only when AutoReplyState is Scheduled. | |
| **EventsToDeleteIDs** | Write | StringArray[] | The EventsToDeleteIDs parameter specifies the calendar events to delete from the mailbox when the DeclineEventsForScheduledOOF parameter is set to $true. | |
| **ExternalAudience** | Write | String | The ExternalAudience parameter specifies whether Automatic Replies are sent to external senders. Valid values are: None, Known, All | `None`, `Known`, `All` |
| **ExternalMessage** | Write | String | The ExternalMessage parameter specifies the Automatic Replies message that's sent to external senders or senders outside the organization. If the value contains spaces, enclose the value in quotation marks. | |
| **InternalMessage** | Write | String | The InternalMessage parameter specifies the Automatic Replies message that's sent to internal senders or senders within the organization. If the value contains spaces, enclose the value in quotation marks. | |
| **OOFEventSubject** | Write | String | The OOFEventSubject parameter specifies the subject for the calendar event that's automatically created when the CreateOOFEvent parameter is set to $true. | |
| **StartTime** | Write | String | The StartTime parameter specifies the start date and time that Automatic Replies are sent for the specified mailbox. You use this parameter only when the AutoReplyState parameter is set to Scheduled, and the value of this parameter is meaningful only when AutoReplyState is Scheduled. | |
| **Ensure** | Write | String | Represents the existance of the instance. This must be set to 'Present' | `Present` |


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



