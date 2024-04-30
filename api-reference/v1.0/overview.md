---
title: "Microsoft Graph REST API v1.0 endpoint reference"
description: "Find reference content for Microsoft Graph REST APIs in the v1.0 endpoint, which includes APIs in general availability (GA) status."
ms.localizationpriority: high
author: "lauragra"
ms.subservice: "non-product-specific"
doc_type: conceptualPageType
ms.topic: overview
---

# Microsoft Graph REST API v1.0 endpoint reference

Welcome to Microsoft Graph REST API reference for the `v1.0` endpoint.

API sets on the `v1.0` endpoint (`https://graph.microsoft.com/v1.0`) have reached general availability (GA), and have gone through a rigorous review-and-feedback process with customers to meet practical, production needs. Updates to APIs on this endpoint are additive in nature and don't break existing app scenarios.

## Common use cases

The power of Microsoft Graph lies in easy navigation of entities and relationships across different services exposed on a single Microsoft Graph REST endpoint.

Some of these services are designed to enable rich scenarios around a [user](./resources/user.md) and around a [group](./resources/group.md).

### User-centric use cases in v1.0

- [Get the profile](./api/user-get.md) and [photo](./resources/profilephoto.md) of a user.
- [Get the profile information for a user's manager](./api/user-list-manager.md) and [IDs of their direct reports](./api/user-list-directreports.md), all stored in Microsoft Entra ID.
- [Access a user's files on OneDrive](./api/driveitem-list-children.md), find the [identity](./resources/identityset.md) of the last person who modified a [file](./resources/driveitem.md) there, and go to that person's profile.
- [Access a user's calendar](./api/calendar-get.md) on Exchange Online and [determine the best time to meet with their team](./api/user-findmeetingtimes.md) in the next two weeks.
- [Subscribe to](./api/subscription-post-subscriptions.md) and [track changes](./api/event-delta.md) in a user's calendar, and tell the user when they're spending more than 80% of their time in meetings.
- [Set automatic replies](./api/user-update-mailboxsettings.md#example-1) when a user is away from the office.
- [Get the people who are most relevant to a user](./api/user-list-people.md), based on communication, collaboration, and business relationships.
- Get the latest sales projection from a [chart](./resources/chart.md) in an Excel file in a user's OneDrive.
- [Find the tasks assigned to a user in Planner](./api/planneruser-list-tasks.md).

### Microsoft 365 group use cases in v1.0

- Run a report on Microsoft 365 groups in an organization and identify the group with the most [communication among group members](./api/reportroot-getoffice365groupsactivitycounts.md).
- [Find the plans of this Microsoft 365 group](./api/plannergroup-list-plans.md), and the [assignment of tasks](./resources/plannerassignments.md) in that plan.
- [Start a new conversation](./api/group-post-conversations.md) in the Microsoft 365 group to determine if members want to [create another group](./api/group-post-groups.md) to share the workload.
- [Get the default notebook](./api/notebook-get.md) for the group and [create a page](./api/section-post-pages.md) to note the outcome of the investigation.

## Call the v1.0 endpoint

Microsoft Graph API requests to the v1.0 endpoint use the following pattern:

```http
https://graph.microsoft.com/v1.0/{resource}?[query_parameters]
```

For more information about Microsoft Graph REST API calls, see [Use the Microsoft Graph API](/graph/use-the-api).

## Microsoft Graph beta endpoint

Currently two versions of Microsoft Graph REST APIs are available - v1.0 and beta.
If you're interested in new or enhanced APIs that are still in preview status, see [Microsoft Graph beta endpoint reference](/graph/api/overview?view=graph-rest-beta&preserve-view=true). 

> [!CAUTION]
> APIs in preview status are subject to change, and might break existing scenarios without notice. Don't take a production dependency on APIs in the `beta` endpoint.

For more information, see [Versioning and support](/graph/versioning-and-support).

## What's new
Find out [what's new](/graph/whats-new-overview) in the v1.0 endpoint.

For details about changes to Microsoft Graph APIs in v1.0, explore the [API changelog](https://developer.microsoft.com/en-us/graph/changelog/?filterBy=v1.0).

## Related content

- [Overview of Microsoft Graph](/graph/overview)
- [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)
- [Microsoft Graph quick start](https://developer.microsoft.com/graph/quick-start)
- [Use Microsoft Graph SDKs](/graph/sdks/sdks-overview)
