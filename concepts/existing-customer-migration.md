---
title: "Microsoft Graph existing customer migration"
description: "Description of how to migrate existing customers to Microsoft Graph Data Connect"
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Migrate existing customers to Microsoft Graph Data Connect

Customers migrate to the updated Data Connect onboarding experience in three phases.

## Phase 1
<!-- Please update placeholders. -->

&lt;alias&gt;

In the first phase, if you enable Data Connect after &lt;May 9 2023?&gt; you'll automatically start using Data Connect with the new app registration and app authorization experience. See the **[updated Microsoft Graph Data Connect onboarding experience](./onboarding-experience-overview.md)**.

If you are an existing Data Connect customer, and want to get started with the improved app registration and authorization experience, simply disable Data Connect and then re-enable it after &lt;May 1 2023?&gt;. If you choose this option, none of your existing PAM authorizations will be migrated to the new experience. You'll need to register the apps from scratch, and work with your tenant admin to get them authorized.

## Phase 2

In the second phase, existing Data Connect customers are provided the option to perform a one-click auto-migration from PAM over to the new onboarding experience. This auto-migration handles the conversion of existing PAM authorizations into app registrations and maintains existing app authorizations. The goal is to enable a smooth migration with no downtime for existing customers.

Existing customers will see this option from &lt;June 2023&gt;. We will share more details on what auto-migration entails as we approach the date this feature will become available.

## Phase 3

In the third phase, existing Data Connect customers who didn't perform the one-click auto-migration will be automatically migrated to the new onboarding experience. When available, we will announce the date to begin force migration. Any customer who remains not migrated by the start of phase 3 will be force-migrated to the new experience on their first Data Connect run once phase 3 begins.
