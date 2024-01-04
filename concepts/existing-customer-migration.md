---
title: "Migrate existing customers to the enhanced Microsoft Graph Data Connect consent experience"
description: "Learn how existing customers can migrate to the enhanced Microsoft Graph Data Connect consent experience."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Migrate existing customers to the enhanced Microsoft Graph Data Connect consent experience

Starting August 17, 2023, new customers who onboard to Microsoft Graph Data Connect will automatically benefit from the enhanced authorization experience. Existing customers who onboarded by using the [PAM authorization flow](./data-connect-pam.md) have three options to migrate to the enhanced experience.

## Option 1: Self-serve migration

<!-- Update 8/17/2023 changed date per developer guidance to August 17, 2023. -->

If you're an existing Data Connect customer and you want to get started with the enhanced app registration and authorization experience, have your tenant admin disable Data Connect in the Microsoft 365 admin portal and then reenable it by using the following steps:

1. Deselect the checkbox to **Turn Microsoft Graph Data Connect on or off for your entire organization**.
2. Choose **Save**. This disables Data Connect for your tenant. 
3. Refresh the page. The opt-in flyout will no longer present a textbox for providing an approver security group, along with modified text and links to reflect the new experience.  
4. Select the checkbox to **Turn Microsoft Graph Data Connect on or off for your entire organization**.
5. Choose **Save**. This reenables Data Connect for your tenant with the new onboarding experience.
6. Follow the steps in the [onboarding guide](./onboarding-experience-overview.md) to register the apps that you require and work with your tenant administrator to get them authorized for Data Connect.

![A screenshot showing how to enable data connect in the Microsoft 365 admin center.](../concepts/images/data-connect-new-consent-flow-enable-mgdc.png)

This option is available today. If you choose this option, none of your existing Privileged Access Management (PAM) authorizations are migrated to the new experience. You need to register the apps and work with your tenant admin to get them authorized.

## Option 2: One-click automatic migration

Existing Data Connect customers can perform a one-click automatic migration from PAM to the enhanced onboarding experience. This migration is done for each tenant independently and handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

<!-- This option will be available in late 2023. Stay tuned for more details. -->

The new experience involves the requirements of each consent to have **one column set per dataset**, **one scope per dataset**, and **one destination sink per app registration**. 

For the tenants that comply with these requirements, the migration can be performed by the tenant admin in the Microsoft 365 admin portal. Similarly to the self-serve migration, the process is done by clicking the following checkbox.

![A screenshot showing how to enable the new experience for data connect in the Microsoft 365 admin center.](../concepts/images/data-connect-new-consent-flow-one-click-enable-mgdc.png)

### Special case migration

If your tenant has active consents with any of the below conditions, the tenant requires a special attention. 
- Multiple column sets per dataset 
- Multiple scopes per dataset 
- Multiple destination sinks per app registration
- Combinations of the above 

Upon one-click migration, the active consents would merge under the concept of one app, one dataset, one sink. 

For example, consider the following consents:

1. Application: Productivity_Analysis; Dataset: Message_v1; Columns: [SentTime]; Scope: [Legal]  
2. Application: Productivity_Analysis; Dataset: Message_v1; Columns: [Message]; Scope: [Engineering] 
3. Application: Productivity_Analysis; Dataset: TeamsChats_v2; Columns: [id]; Scope: [HR] 

After migration, the consents will merge since they are under the same application: 

1. Application: Productivity_Analysis; [Dataset: Message_v1; Columns: [SentTime, Message], Scope: [Legal, Engineering] , Dataset: TeamsChats_v2; Columns: [id], Scope: [HR]]
 
Note that consent for extracting Columns [Message] data for the group [Legal] has been introduced. Likewise for [SentTime] data of the group [Engineering]. 

For any questions, reach out to dataconnect@microsoft.com.

## Option 3: Automatic migration

<!-- Update 12/15/2023 changed date per developer guidance to mid 2024. -->

Starting in mid-2024, existing Data Connect customers who didn't perform the one-click automatic migration are migrated automatically to the new onboarding experience. Any customer who is not migrated by this time will be migrated to the new experience on their first run of Data Connect.
