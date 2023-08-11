---
title: "Microsoft Graph existing customer migration"
description: "Description of how existing customers can migrate to the enhanced Microsoft Graph Data Connect consent experience"
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# How existing customers can migrate to the enhanced Microsoft Graph Data Connect consent experience

New customers who onboard onto Microsoft Graph Data Connect beginning in late August 2023 will automatically start using the enhanced authorization experience. Existing customers with the [PAM authorization flow](./data-connect-pam.md) can migrate to the enhanced experience in three phases.

## Phase 1: Self-serve migration

<!-- Date changed to "August 2023" and once the release goes out fully, we can add a quick change to add the exact date. -->

If you are an existing Data Connect customer and want to get started with the improved app registration and authorization experience, simply have your tenant admin disable Data Connect in the admin portal and then re-enable it. Then, follow the steps in the [onboarding guide](./onboarding-experience-overview.md).

This option is available today. If you choose this option, none of your existing Privileged Access Management (PAM) authorizations will be migrated to the new experience. You'll need to register the apps from scratch, and work with your tenant admin to get them authorized.

## Phase 2: One-click auto migration

Existing Data Connect customers are provided the option to perform a one-click auto-migration from PAM over to the new onboarding experience. This auto-migration handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

More details will be shared as we get closer to the release.

## Phase 3: Automatic migration

In this phase, existing Data Connect customers who didn't perform the one-click auto-migration will be automatically migrated to the new onboarding experience. When available, we will announce the date to begin force migration. We anticipate this date to be in late 2023. Any customer who is not migrated by the beginning of phase 3 will be automatically migrated to the new experience on their first run of Data Connect, once phase 3 begins.
