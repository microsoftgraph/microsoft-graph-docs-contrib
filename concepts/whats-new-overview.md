---
title: "What's new in Microsoft Graph"
description: "View highlights of what's new in Microsoft Graph in the past two months, what was added in earlier releases, and how you can share your ideas."
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/).

In addition, find out about new documentation and learning resources for released features and APIs.

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## January 2024: New and generally available

### Device and app management | Cloud PC

The [virtualEndpoint](/graph/api/resources/virtualendpoint) resource is generally available, laying the foundation for future Cloud PC updates to the `v1.0` path.

## December 2023: New and generally available

### Identity and access | Directory management

When a Microsoft service fails to provision a user, group, or organizational contact, and returns an error, you can now manually retry provisioning using the following APIs:

- [Retry provisioning a user](/graph/api/user-retryserviceprovisioning)
- [Retry provisioning a group](/graph/api/group-retryserviceprovisioning)
- [Retry provisioning an organizational contact](/graph/api/orgcontact-retryserviceprovisioning)

_See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=9bb64b16-cc35-474d-8036-e8d5d1534fa1)_.

### Teams

Pricing update for the Teams meeting APIs starting January 1, 2024. For more information, see [Payment models and licensing requirements for Microsoft Teams APIs](/graph/teams-licenses#payment-requirements-for-meeting-apis).

## December 2023: New in preview only

### Employee experience | Employee engagement
Create and get a Viva Engage community that is a central place for conversations, files, events, and updates for people sharing a common interest or goal. Use the Viva Engage API for the following scenarios:

- [Create a community](/graph/api/employeeexperience-post-communities?view=graph-rest-beta&preserve-view=true)
- [Poll for community creation status](/graph/api/engagementasyncoperation-get?view=graph-rest-beta&preserve-view=true)
- [Get a community](/graph/api/community-get?view=graph-rest-beta&preserve-view=true)

### Identity and access | Identity and sign-in

- Customize user authentication experiences in Microsoft Entra External ID for customers by configuring actions to run before or after you collect attributes from a user. You can configure the following Microsoft Graph entities:
  - [onAttributeCollectionStartCustomExtension](/graph/api/resources/onattributecollectionstartcustomextension?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitCustomExtension](/graph/api/resources/onattributecollectionstartcustomextension?view=graph-rest-beta&preserve-view=true) objects to run custom code before or after you collect attributes from a user, respectively.
  - [onAttributeCollectionStartListener](/graph/api/resources/onattributecollectionstartlistener?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitListener](/graph/api/resources/onattributecollectionsubmitlistener?view=graph-rest-beta&preserve-view=true) objects to specify the event to invoke before or after you collect attributes from a user, respectively.

  _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=4badb014-c277-4c08-b593-8ed808b11baa)_.

- We have refined how you can programmatically define the [tenant-wide policy for registering new devices](/graph/api/resources/deviceregistrationpolicy?view=graph-rest-beta&preserve-view=true) using Microsoft Entra join and Microsoft Entra register within your organization. This update introduces breaking changes that require you to update your app logic to ensure continued functionality. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6bd09a97-53a9-401e-b0c5-266b9db06a1b)_.

### Teamwork and communications | Shift management

- Get all [openShift](/graph/api/resources/openshift) objects across all teams a user is a direct member of, removing the need to specify a team ID in the request. For more information, see [team: getOpenShifts](/graph/api/team-getopenshifts?view=graph-rest-beta&preserve-view=true).
- [Stage the deletion](/graph/api/changetrackedentity-stagefordeletion?view=graph-rest-beta&preserve-view=true) of an [openShift](/graph/api/resources/openshift), [shift](/graph/api/resources/shift), or [timeOff](/graph/api/resources/timeoff) instance in a [schedule](/graph/api/resources/schedule) in draft mode.

## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Feedback Portal](https://aka.ms/graphfeedback).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
