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

The new experience requires that each app consents to one list of datasets, and each dataset be mapped to only one set of columns and one scope.

For tenants that meet this requirement, the tenant admin can complete the migration in the Microsoft 365 admin portal by selecting the **Enable new Microsoft Graph Data Connect authorization experience** checkbox. 

![A screenshot showing how to enable the new experience for data connect in the Microsoft 365 admin center.](../concepts/images/data-connect-new-consent-flow-one-click-enable-mgdc.png)

### Special case migration

Your tenant requires special attention if it has active consents with any of the following conditions: 
- Multiple column sets per dataset 
- Multiple scopes per dataset 
- Multiple destination sinks per app registration
- A combination of any of these

Upon one-click migration, the active consents will merge under each corresponding app and dataset. An app can have multiple datasets, and each dataset has a set of consented Columns and Scopes. All sinks consented for an app previously will continue to be consented for the app after migration.

For example, consider the following consents:

1. **Application**: `Productivity_Analysis`; **Sink**: `Storage_Account_1`; **Dataset**: `Message_v1`; **Columns**: [SentTime]; **Scope**: [Legal]  
2. **Application**: `Productivity_Analysis`; **Sink**: `Storage_Account_2`; **Dataset**: `Message_v1`; **Columns**: [Message]; **Scope**: [Engineering]
3. **Application**: `Productivity_Analysis`; **Sink**: `Storage_Account_2`; **Dataset**: `DirectReports_v1`; **Columns**: [Direct Report]; **Scope**: [Engineering] 

After migration, the consents will merge because they are under the same application: 

**Application**: `Productivity_Analysis`; **Sink**: [`Storage_Account_1`, `Storage_Account_2`]; 
  [ **Dataset**: `Message_v1`; **Columns**: [SentTime, Message], 
  **Dataset**: `DirectReports_v1`; **Columns**: [Direct Report] ]; 
  **Scope**: [Legal, Engineering]
 
> [!NOTE]
> When merging consents, new consents can be introduced. In this example, the consent for extracting Columns [Message] data for the group [Legal] has been introduced and for [SentTime] data of the group [Engineering]. Similarly, both sinks will have consent to the datasets, columns, and scopes. If this is not the desired state, either revoke the consents that you do not want migrated in PAM prior to migration or fix any unintended changes in the new experiences after migration. For any questions, reach out to dataconnect@microsoft.com.

## Option 3: Automatic migration

<!-- Update 12/15/2023 changed date per developer guidance to mid 2024. -->

Between March 31st, 2024 and April 30th, 2024, existing Microsoft Graph Data Connect customers who didn't perform the one-click automatic migration will be migrated automatically to the new onboarding experience on their first pipeline run of Microsoft Graph Data Connect. During this time, no new PAM requests will be created. In both cases (one-click migration and automatic migration), MGDC will convert all your approved PAM requests for MGDC into MGDC app registrations and authorizations for the new experience so that existing pipelines continue working without any required modifications. 

After April 30th, 2024, if your tenant has not been migrated to the new experience, your tenant's PAM approvals will NOT be converted and you will need to manually use the new onboarding experience to enable your pipelines again after this date.
