---
title: "Migrate to the updated Microsoft Graph Data Connect onboarding experience"
description: "Description of how to migrate existing customers to Microsoft Graph Data Connect"
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Migrate to the updated Microsoft Graph Data Connect onboarding experience

Customers migrate to the updated Data Connect onboarding experience in three phases.

## Phase 1
<!-- Date changed to "August 2023" and once the release goes out fully, we can add a quick change to add the exact date. -->

In the first phase, if you enable Data Connect after August 2023 you'll automatically start using Data Connect with the new app registration and app authorization experience. See the **[updated Microsoft Graph Data Connect onboarding experience](./onboarding-experience-overview.md)**.

If you are an existing Data Connect customer, and you want to use the updated app registration and authorization experience, disable and then reenable Data Connect in your tenant. If you choose this option, none of your existing PAM authorizations will migrate to the new experience. You'll need to register the apps and work with your tenant admin to get them authorized.

## Phase 2

In the second phase, existing Data Connect customers are provided the option to perform a one-click auto-migration from PAM over to the new onboarding experience. This auto-migration handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

Users who choose option 2 can migrate to the new experience automatically. With this option, the conversion of exiting PAM authorizations to app registrations is handled automatically and existing app authorizations are maintained, which ensures a smooth transition with no downtime.

Existing customers will see this option from August 2023. We will share more details on what auto-migration entails as we approach the date this feature will become available.

## Phase 3

In the third phase, existing Data Connect customers who didn't perform the one-click auto-migration will be automatically migrated to the new onboarding experience. When available, we will announce the date to begin force migration. Any customer who remains not migrated by the start of phase 3 will be force-migrated to the new experience on their first Data Connect run once phase 3 begins.
