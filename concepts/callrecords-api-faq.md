---
title: "Microsoft Graph Call Records API FAQ"
description: "Find answers to frequently asked questions about Microsoft Call Records API and Call Records notification feed."
author: "MirraRaine"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
---

# Microsoft Graph Call Records API frequently asked questions

## What is the Microsoft Graph Call Records API?

The Microsoft Graph Call Records API, also known as the call records API, offers usage and diagnostic insights for calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. Organizations, referred to as tenants, can use the call records API to subscribe to, list, retrieve call records by call IDs, and to look up calls for a participant. For more details, please refer to the [Working with the call records API in Microsoft Graph](../api-reference/v1.0/resources/callrecords-api-overview.md).

## What is the permission required to use the Call Records API?

Your application needs the **CallRecords.Read.All** permission to access call records in Microsoft Graph. An administrator must grant this permission to the application.  For more details, please refer to the [Microsoft Graph permissions reference](permissions-reference.md).

## How do I request a call record using the Microsoft Graph Call Records API?

To request a call record, you need to make a `GET` request to the `/communications/callRecords/{id}` endpoint, where `{id}` is the unique identifier of your call. Ensure you have the necessary **CallRecords.Read.All** permission and include the Authorization header with a valid bearer token. For more details, please refer to the  [Get callRecord documentation](../api-reference/v1.0/api/callrecords-callrecord-get.md).

## Where can I find the call IDs of the calls that occurred in my organization?

You can find and collect call IDs using the following options:

* **Subscribe to notifications**: Subscribe to [change notifications feed](changenotifications-for-callrecords.md) and receive notifications containing call IDs whenever a new call record is created.
* **List call records**: Get a list of call IDs by requesting it from [List callRecords API](../api-reference/v1.0/api/callrecords-cloudcommunications-list-callrecords.md).
* **Manual search**: If you are a [Call Analytics](https://learn.microsoft.com/microsoftteams/use-call-analytics-to-troubleshoot-poor-call-quality) customer, you can manually search for a call ID in a user’s history. Note that there is no automated system available to retrieve all call IDs from Call Analytics.
* **Use callChainId:**: Look up the call ID using the `callChainId` from the [Get call](../api-reference/v1.0/resources/call.md) API after the call is completed. The `callChainId` may differ from the call ID in certain scenarios, such as transfer calls due to architecture specifics. Therefore, this method is less preferred compared to other options.

## When is a call record available?

A first version of a call record is typically generated and a notification is sent within 15 minutes after a call ends. However, it can take up to 60 minutes for the service to make the call record available. For more details, please refer to the [Latency](../api-reference/v1.0/resources/subscription.md#latency) page.

## How long are call records retained?

Call records are retained for 30 days after the call ends.

## Can I retrieve call records older than 30 days?

No, the Call Records API does not return call records older than 30 days. Requests for such records result in a 404 Not Found error response.

## Why is my call record notification delayed?

Your call record notification may be delayed because it can take up to 60 minutes for the service to make the first version of a call record available. If you experience a longer delay, check for any reported outages by the Graph Call Records API team in the “Health” tab of the [Teams Admin Portal](https://admin.teams.microsoft.com/). Additionally, you can open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team.

## Why does a call record have missing fields?

A call record may have missing fields due to delayed telemetry from a client. When new telemetry data becomes available, the system generates a new call record with updated information and increments the `version` property value. If your call record is missing properties, wait for the next call record version. If the new version does not arrive, open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team.

## How can I list all participants attended in a call?

There are multiple options to list all participants who attended a call.

### Option 1: List participants_v2 API

Use the [List participants_v2](../api-reference/v1.0/api/callrecords-callrecord-list-participants_v2.md) API to collect the full list of participants for a requested call id.

### Option 2: callRecords API with expanded participants_v2 property

You can call `GET communications/callRecords/{id}?$expand=participants_v2` to retrieve high-level call details along with the list of participants.

### Option 3: Build custom participants list

To see all participants, implement a custom solution to build the participants list from the call records data:

1. Call [Get callRecord](../api-reference/v1.0/api/callrecords-callrecord-get.md) API with expanded sessions endpoint: `GET /communications/callRecords/{id}?$expand=sessions`
2. Read `caller` property from each session on the received `sessions` list
3. Build your custom participants list based on the `caller` endpoint [identity](../api-reference/v1.0/resources/identity.md) collecting `id`, `displayName`, and other properties you require to gather for a participant

## Why don't I see all participants who attended a call while calling list participants_v2 API?

You might not see all participants because the [List participants_v2](../api-reference/v1.0/api/callrecords-callrecord-list-participants_v2.md) API supports pagination, limiting the number of participants in the response to 60 per page. If there were more than 60 users on the call, the first call record response contains 60 participants along with a `@odata.nextLink` property. This property includes the URL to call the API and receive the next set of participants. Continue this process until the next link is empty, indicating that there are no more participants to retrieve.

## Why do I receive a 404 Not Found error?

There are several reasons you might encounter a 404 Not Found error:

* **Recent Call**: If the call was made within the last 60 minutes, the call record might not be generated yet. Wait and try again in an hour.
* **Old Call**: If the call is older than 30 days, the Graph Call Records API returns a 404 Not Found error by design.
* **Other Issues**: If neither of the reasons apply, check for any reported outages by the Graph Call Records API team in the “Health” tab of the [Teams Admin Portal](https://admin.teams.microsoft.com/). Additionally, you can open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team for assistance.
