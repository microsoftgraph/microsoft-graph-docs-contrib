---
title: "Migrate existing customers to the enhanced Microsoft Graph Data Connect consent experience"
description: "Learn how existing customers can migrate to the enhanced Microsoft Graph Data Connect consent experience."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Migrate existing customers to the enhanced Microsoft Graph Data Connect consent experience

Starting in late August 2023, new customers who onboard to Microsoft Graph Data Connect automatically use the enhanced authorization experience. Existing customers who onboarded by using the [PAM authorization flow](./data-connect-pam.md) have three options to migrate to the enhanced experience.

## Option 1: Self-serve migration

<!-- Date changed to "August 2023" and once the release goes out fully, we can add a quick change to add the exact date. -->

If you're an existing Data Connect customer and want to get started with the enhanced app registration and authorization experience, have your tenant admin disable Data Connect in the Microsoft 365 admin portal and then re-enable it. Then, follow the steps in the [onboarding guide](./onboarding-experience-overview.md).

This option is available today. If you choose this option, none of your existing Privileged Access Management (PAM) authorizations will be migrated to the new experience. You'll need to register the apps and work with your tenant admin to get them authorized.

## Option 2: One-click automatic migration

Existing Data Connect customers have the option to perform a one-click automatic migration from PAM to the enhanced onboarding experience. This migration handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

This option will be available in late 2023. Stay tuned for more details.

## Option 3: Automatic migration

Starting in late 2023 or early 2024, existing Data Connect customers who didn't perform the one-click automatic migration will be migrated automatically to the new onboarding experience. Any customer who has not migrated by this time will be migrated to the new experience on their first run of Data Connect.
