---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures calendar publishing or sharing settings on a mailbox
for the visibility of calendar information to external users.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the calendar folder that you want to modify. | |
| **DetailLevel** | Write | String | The DetailLevel parameter specifies the level of calendar detail that's published and available to anonymous users. | `AvailabilityOnly`, `LimitedDetails`, `FullDetails` |
| **PublishDateRangeFrom** | Write | String | The PublishDateRangeFrom parameter specifies the start date of calendar information to publish (past information). | `OneDay`, `ThreeDays`, `OneWeek`, `OneMonth`, `ThreeMonths`, `SixMonths`, `OneYear` |
| **PublishDateRangeTo** | Write | String | The PublishDateRangeTo parameter specifies the end date of calendar information to publish (future information). | `OneDay`, `ThreeDays`, `OneWeek`, `OneMonth`, `ThreeMonths`, `SixMonths`, `OneYear` |
| **PublishEnabled** | Write | Boolean | The PublishEnabled parameter specifies whether to publish the specified calendar information. | |
| **SearchableUrlEnabled** | Write | Boolean | The SearchableUrlEnabled parameter specifies whether the published calendar URL is discoverable on the web. | |
| **SharedCalendarSyncStartDate** | Write | String | The SharedCalendarSyncStartDate parameter specifies the limit for past events in the shared calendar that are visible to delegates. A copy of the shared calendar within the specified date range is stored in the delegate's mailbox. | |
| **Ensure** | Write | String | Determines wether or not the instance exist. | `Present` |


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

- Organization Management, Recipient Management

#### Role Groups

- Organization Management, Help Desk

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



