---
title: "Microsoft Teams API licensing and payment requirements"
description: "Learn about the licensing and payment models that apply to the Microsoft Teams API in Microsoft Graph: model=A, model=B, and evaluation mode."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Licensing and payment requirements for the Microsoft Teams API

This article describes the licensing and payment requirements for the Microsoft Teams API in Microsoft Graph.

Some APIs provide the option to choose a licensing and payment model via the `model` query parameter; others only support one model or do not support a licensing and payment model. The following APIs have consumption charges:

* [Export Teams content](/graph/api/export-teams-content.md)
* [Create subscription](/graph/api/subscription-post-subscriptions.md)
* [Update chat message](/graph/api/chatmessage-update.md)
* [Get channel message](/graph/api/chatmessage-get)
* [Get message in chat](/graph/api/chatmessage-get)

The following licensing models are available:

- [`model=A`](#modela-requirements) is restricted to applications performing a [security or compliance function](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/MCA#ServiceSpecificTerms), and requires a [supported license](#required-licenses-for-modela). In the future, apps will also be required to pay for the messages they consume beyond the [seeded capacity](#seeded-capacity).

- [`model=B`](#modelb-requirements) is restricted to applications that do not perform a 
[security or compliance function](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/MCA#ServiceSpecificTerms).
There are no licensing requirements for `model=B`.

- [Evaluation mode (default)](#evaluation-mode-default-requirements) enables access to APIs with limited usage per requesting application for evaluation purposes. Change notifications are not sent if the limit is exceeded.

> [!NOTE]
> Starting July 5 2022, pricing events for these APIs reach general availability. We require applications to complete this [form](https://aka.ms/teamsgraph/protectedApis_az) to provide an active Azure subscription for billing purposes. For details, see [recent updates](#recent-updates-and-price-for-additional-use).

## `model=A` requirements

`model=A` is restricted to applications performing a security or compliance function. For details, see the API Terms for Security & Compliance Applications section 
of the [product terms for Microsoft Azure Services](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/MCA#ServiceSpecificTerms).

|API                   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | [Price for additional use](#recent-updates-and-price-for-additional-use) | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) | Message sender | 800 messages per user per month per app | $0.00075 per message | Seeded capacity is shared with conversationMember change notifications |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | Any user in the tenant | 800 notifications per user per month per app  | $0.00075 per notification | Seeded capacity is shared with chatMessage change notifications |
| [Get messages across all chats for user](/graph/api/chats-getallmessages) | Named user | 1600 messages per user per month per app | $0.00075 per message | The named user is the user identified in the GET request URL. Minimum charge of 1 message per API request. Seeded capacity is shared with channel export. |
| [Get messages across all channels](/graph/api/channel-getallmessages)| Any team member | 1600 messages per user per month per app | $0.00075 per message |  Minimum charge of 1 message per API request. Seeded capacity is shared with chat export. |
| [Updating a chatMessage's policyViolation](/graph/api/chatmessage-update) |  Message sender |  800 messages per user per month per app | $0.00075 per message |

## `model=B` requirements

`model=B` is restricted to applications that do not perform a security or compliance function. For details, see the [API Terms for Security & Compliance Applications](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/MCA#ServiceSpecificTerms) section of the product terms for Microsoft Azure Services.

|API                   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | [Price for additional use](#recent-updates-and-price-for-additional-use) | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) | N/A | None | $0.00075 per message |  |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | N/A | None  | $0.00075 per notification | |
| [Get messages across all chats for user](/graph/api/chats-getallmessages) |  N/A | None | $0.00075 per message |  Minimum charge of 1 message per API request. |
| [Get messages across all channels](/graph/api/channel-getallmessages)|  N/A | None | $0.00075 per message | Minimum charge of 1 message per API request. |

## Evaluation mode (default) requirements

|API   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | [Price for additional use](#recent-updates-and-price-for-additional-use) | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) |  N/A | 500 messages per month per app | N/A |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | N/A | 500 messages per month per app | N/A | 
| [Get messages across all chats for user](/graph/api/chats-getallmessages) |  N/A | 500 messages per month per app | N/A |  Minimum charge of 1 message per API request. |
| [Get messages across all channels](/graph/api/channel-getallmessages)|  N/A | 500 messages per month per app | N/A |  Minimum charge of 1 message per API request. |
| [Updating a chatMessage's policyViolation](/graph/api/chatmessage-update) |   N/A |  500 messages per month per app | N/A |

In evaluation mode, seeded capacity is shared across all APIs. 
When seeded capacity is exceeded, API calls with licensing and payment requirements will fail with a 402 error code, and subscriptions with licensing and payment requirements will not send change notifications.

## Required licenses for `model=A` 

The user will need a license that supports 
the Microsoft Communications DLP [service plan](/azure/active-directory/enterprise-users/licensing-service-plan-reference),
such as one of these [supported licenses](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-graph-apis-for-teams-data-loss-prevention-dlp-and-for-teams-export).
Which user needs the license varies by API; 
for details, see [`model=A` requirements](#modela-requirements).

Guest users are exempt from these licensing requirements.
Similarly, messages sent from outside the tenant (federated chat) are exempt.
Consumption meters still apply.

It is the responsibility of the tenant owner (not the app owner) to ensure users are properly licensed.
Admins can use the Information protection license report in 
[Teams admin center](https://admin.teams.microsoft.com/analytics/reports) 
to see which users don't have a supported license.

Many supported licenses offer free trials. 
[Office 365 E5](https://www.microsoft.com/microsoft-365/enterprise/office-365-e5?activetab=pivot%3aoverviewtab) 
for instance has a `Free trial` link underneath the `Buy` button.

You can get a free Microsoft 365 E5 developer sandbox subscription with 25 user licenses 
through the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).

## Improper licensing and evaluation mode seeded capacity exceeded

In the event that improper licensing is detected, the API call will fail and data will not be returned.
Specifically, for most APIs, attempting to GET messages for an unlicensed user will result in a 402 error code. 
For change notifications, messages sent by unlicensed users will not generate a change notification. 
Similarly, API calls and change notifications used in evaluation mode 
in excess of the seeded capacity will fail.

| Sample error type | Status code | Sample error message |
|:-----------|:-----------|:-----------------|
|E5 license requirement not met| 402 (Payment Required) |`...needs a valid license to access this API...`, `...tenant needs a valid license to access this API...`|
|Model B is not supported for Patch API| 402 (Payment Required) |`...query parameter 'model' does not support value 'B' for this API. Use billing model 'A'...`|
|Evaluation capacity exceeded|402 (Payment Required)|`...evaluation mode capacity has been exceeded. Use a valid billing model...`|


> [!NOTE]
> A successful API call does not mean that the proper licensing is in place. Similarly, API success in evaluation mode does not guarantee the call is within seeded capacity.

## Seeded capacity

Seeded capacity is the amount of capacity that an app can use before a consumption meter is charged. Capacity is pooled at the tenant level&mdash;the seeded capacity for all users in the tenant is added up and compared against the app's usage in the tenant. Seeded capacity is per app per tenant&mdash;apps won't run out of seeded capacity if another app runs out.

The seeded capacity differs by API; see [`model=A` requirements](#modela-requirements) and [`model=B` requirements](#modelb-requirements).

## Recent updates and price for additional use

In October 2021 we [communicated](https://devblogs.microsoft.com/microsoft365dev/announcing-general-availability-of-microsoft-graph-export-api-for-microsoft-teams-messages/#license-requirements-for-microsoft-graph-api-for-teams-export-and-dlp) upcoming charges for the consumption of these APIs; on July 5th 2022, these prices take effect as  [previously announced](https://devblogs.microsoft.com/microsoft365dev/upcoming-billing-changes-for-microsoft-graph-apis-for-teams-messages/). If your applications are or will be calling any of these APIs, we require you to complete this [request form](https://aka.ms/teamsgraph/protectedApis_az) providing an active Azure subscription. When the [form](https://aka.ms/teamsgraph/protectedApis_az) has been submitted to register an application, you can continue using these APIs. We will follow up with next steps to onboard your application to billing. 

Please note that the organization that owns the app registration is responsible for the payment and the Azure subscription should also be active in the same tenant. For multitenant apps, the organization might be different than the organization that runs the app.
