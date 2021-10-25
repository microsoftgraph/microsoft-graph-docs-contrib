---
title: "Licensing and payment requirements"
description: "Learn about the licensing and payment models that apply to Microsoft Teams APIs in Microsoft Graph."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Licensing and payment requirements for Microsoft Teams APIs in Microsoft Graph

This article describes the licensing and payment requirements for Microsoft Teams APIs.

Some APIs provide the option to choose a licensing and payment model via the `model` query parameter; 
others only support one model or do not support a licensing and payment model.
The following licensing models are available:

- [`model=A`](#modela-requirements) is restricted to applications performing a [security or compliance function](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzureServices/MCA#ServiceSpecificTerms), 
and requires a [supported license](#required-licenses-for-modela).
In the future, apps will also be required to pay for the messages they consume beyond the [seeded capacity](#seeded-capacity).

- [`model=B`](#modelb-requirements) is free to use today; 
however, in the future, apps will pay based on the number of messages they consume. 
There are no licensing requirements for `model=B`,
and it is not restricted to applications performing a security or compliance function.

- [Evaluation Mode (default)](#evaluation-mode-default-requirements)
enables access to APIs with limited usage per requesting application for evaluation purposes. 
Change notifications will not be sent if the limit is exceeded.

## `model=A` requirements

`model=A` is restricted to applications performing a security or compliance function. For details, see the API Terms for Security & Compliance Applications section 
of the [product terms for Microsoft Azure Services](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/MCA#ServiceSpecificTerms).

|API                   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | Price for additional use | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) | Message sender | 800 messages per user per month per app | $0.00075 per message | |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | Any user in the tenant | 800 notifications per user per month per app  | $0.00075 per notification | Seeded capacity is shared with chatMessage change notifications |
| [Get messages across all chats for user](/graph/api/chats-getallmessages) | Named user | 1600 messages per user per month per app | $0.00075 per message | The named user is the user identified in the GET request URL. Minimum charge of 1 message per API request. Seeded capacity is shared with channel export. |
|  [Get messages across all channels](/graph/api/channel-getallmessages)| Any team member | 1600 messages per user per month per app | $0.00075 per message |  Minimum charge of 1 message per API request. Seeded capacity is shared with chat export. |
| [Updating a chatMessage's policyViolation](/graph/api/chatmessage-update) |  Message sender |  800 messages per user per month per app | $0.00075 per message |

## `model=B` requirements

|API                   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | Price for additional use | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) | N/A | None | $0.00075 per message | Seeded capacity is shared with conversationMember change notifications. |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | N/A | None  | $0.00075 per notification | Seeded capacity is shared with chatMessage change notifications. |
| [Get messages across all chats for user](/graph/api/chats-getallmessages) |  N/A | None | $0.00075 per message |  Minimum charge of 1 message per API request. Seeded capacity is shared with channel export. |
|  [Get messages across all channels](/graph/api/channel-getallmessages)|  N/A | None | $0.00075 per message | Minimum charge of 1 message per API request. Seeded capacity is shared with chat export. |

## Evaluation mode (default) requirements

|API                   | Who needs a [license](#required-licenses-for-modela)  | Seeded capacity | Price for additional use | Notes |
|:-----------------------------|:--------------------------------------------|:----------------|:-------|:------|
| [chatMessage change notifications](/graph/api/subscription-post-subscriptions) |  N/A | 500 messages per month per app | N/A |
| [conversationMember change notifications](/graph/api/subscription-post-subscriptions) | N/A | 500 messages per month per app | N/A | 
| [Get messages across all chats for user](/graph/api/chats-getallmessages) |  N/A | 500 messages per month per app | N/A |  Minimum charge of 1 message per API request. |
|  [Get messages across all channels](/graph/api/channel-getallmessages)|  N/A | 500 messages per month per app | N/A |  Minimum charge of 1 message per API request. |
| [Updating a chatMessage's policyViolation](/graph/api/chatmessage-update) |   N/A |  500 messages per month per app | N/A |

In evaluation mode, seeded capacity is shared across all APIs. 
When seeded capacity is exceeded, API calls with licensing and payment requirements will fail with a 402 error code, 
and subscriptions with licensing and payment requirements will not send change notifications.

> **Note**: A successful API call does not mean that the proper licensing is in place. 
> Not all license violations can be detected, and grace periods might be granted in some cases.

## Required licenses for `model=A` 

The user will need one of the 
[supported licenses](https://aka.ms/teams-api-license-list). 
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

> **Note**: A successful API call does not mean that the proper licensing is in place. 
> Not all license violations can be detected, and grace periods might be granted in some cases.
> Similarly, API success in evaluation mode does not guarantee the call is within seeded capacity
> as grace periods may be granted in some cases.

## Seeded capacity

Seeded capacity is the amount of capacity that an app can use before a consumption meter is charged.
Capacity is pooled at the tenant level -- the seeded capacity for all users in the tenant is added up and compared against the app's usage in the tenant.
Seeded capacity is per app per tenant -- 
apps won't run out of seeded capacity if another app runs out.

The seeded capacity differs by API, see 
[`model=A` requirements](#modela-requirements)
and [`model=B` requirements](#modelb-requirements)

## Price for additional use

In the future, Microsoft will charge a fee for usage over the seeded capacity. You will also be able to associate an Azure subscription to your application registration.
