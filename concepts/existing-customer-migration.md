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

This option is available today. If you choose this option, none of your existing Privileged Access Management (PAM) authorizations will be migrated to the new experience. You need to register the apps and work with your tenant admin to get them authorized.

## Option 2: One-click automatic migration

Existing Data Connect customers have the option to perform a one-click automatic migration from PAM to the enhanced onboarding experience. This migration handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

This option will be available in late 2023. Stay tuned for more details.

## Option 3: Automatic migration

Starting in late 2023 or early 2024, existing Data Connect customers who didn't perform the one-click automatic migration are migrated automatically to the new onboarding experience. Any customer who hasn't migrated by this time will be migrated to the new experience on their first run of Data Connect.
