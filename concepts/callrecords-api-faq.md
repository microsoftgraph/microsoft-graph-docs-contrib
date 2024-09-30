---
title: "Microsoft Graph Call Records API FAQ"
description: "Find answers to frequently asked questions about Microsoft Call Records API and Call Records notification feed."
author: "MirraRaine"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
---

# Microsoft Graph Call Records API frequently asked questions

## What is the Microsoft Graph Call Records API?

The Microsoft Graph Call Records API, also known as the call records API, offers usage and diagnostic insights for calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. Organizations referred to as tenants, can use the call records API to subscribe to, list, retrieve call records by call IDs, and to look up calls for a participant. For more details, please refer to the [Working with the call records API in Microsoft Graph](/graph/api/resources/callrecords-api-overview).

## What is the permission required to use the Graph Call Records API?

Your application needs the **CallRecords.Read.All** permission to access call records in Microsoft Graph. An administrator must grant this permission to the application. For more details, please refer to the [Microsoft Graph permissions reference](permissions-reference.md).

## Can I use delegated permissions with the Graph Call Records API?

No, the Graph Call Records API doesn't support delegated permissions.

## Why can't I use delegated permissions with the Graph Call Records API?

You can't use delegated permissions because there's no way to limit **CallRecords.Read.All** permission to specific calls or users, as the application permission is granted at the organization level, not the individual user level.

## How do I request a call record using the Microsoft Graph Call Records API?

To request a call record, you need to make a `GET` request to the `/communications/callRecords/{id}` endpoint, where `{id}` is the unique identifier of your call. Ensure you have the necessary **CallRecords.Read.All** permission and include the Authorization header with a valid bearer token. For more details, please refer to the  [Get callRecord documentation](/graph/api/callrecords-callrecord-get).

## Where can I find the call IDs of the calls that occurred in my organization?

You can find and collect call IDs using the following options:

* **Subscribe to notifications**: Subscribe to [change notifications feed](changenotifications-for-callrecords.md) and receive notifications containing call IDs whenever a new call record is created.
* **List call records**: Get a list of call IDs by requesting it from [List callRecords API](/graph/api/callrecords-cloudcommunications-list-callrecords).
* **Manual search**: If you have access to [Call Analytics](/microsoftteams/use-call-analytics-to-troubleshoot-poor-call-quality) within the [Teams Admin Center](/microsoftteams/teams-overview) for Microsoft Teams, you can manually search for a call ID in a user’s history. However, there's no automated system available to retrieve all call IDs from Call Analytics.
* **Use callChainId:**: Look up the call ID using the `callChainId` from the [Get call](/graph/api/resources/call) API after the call is completed. This approach works when the call is programmatically created and you're working with the [call resource type](/graph/api/resources/call). Also, the `callChainId` may differ from the call record ID in certain scenarios, such as transfer calls due to architecture specifics. Therefore, this method is less preferred compared to other options.

## When is a call record available?

A first version of a call record is typically generated and a notification is sent within 15 minutes after a call ends. However, it can take up to 60 minutes for the service to make the call record available. For more details, please refer to the [Latency](/graph/api/resources/subscription#latency) page.

## How long are call records retained?

Call records are retained for 30 days after the call ends.

## Can I retrieve call records older than 30 days?

No, the Call Records API doesn't return call records older than 30 days. Requests for such records result in a 404 Not Found error response.

## Why is my first call record notification delayed?

Your call record notification may be delayed because it can take up to 60 minutes for the service to make the **first** version of a call record available. If you experience a longer delay for the first call record version delivery, check for any reported outages by the Graph Call Records API team in the "Health" tab of the [Teams Admin Portal](https://admin.teams.microsoft.com/). Additionally, you can open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team.

## Why are subsequent versions of my call record delayed?

Subsequent versions of a call record may be delivered after the initial 60-minute latency. This means that while the first version is available within 60 minutes, later updates to the call record can arrive later due to client delayed telemetry and other factors.

## Why does a call record have missing fields?

A call record may have missing fields due to delayed telemetry from a client. When new telemetry data becomes available, the system generates a new call record with updated information, increments the `version` property value, and sends the updated call record to you. If your call record is missing properties, wait for the next call record version.

However, it's important to note that some fields may remain empty by design or because the client telemetry never arrived, such as media stream values.

If critical fields are still missing or were previously delivered but have stopped, open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team.

## How can I list all participants attended in a call?

There are multiple options to list all participants who attended a call.

### Option 1: List participants_v2 API

Use the [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) API to collect the full list of participants for a requested call ID.

### Option 2: callRecords API with expanded participants_v2 property

You can call `GET communications/callRecords/{id}?$expand=participants_v2` to retrieve high-level call details along with the list of participants.

### Option 3: Build custom participants list

To see all participants, implement a custom solution to build the participants list from the call records data:

1. Call [Get callRecord](/graph/api/callrecords-callrecord-get) API with expanded sessions endpoint: `GET /communications/callRecords/{id}?$expand=sessions`
2. For **peer-to-peer** (P2P) calls, read both the `caller` and `callee` properties from each `session` in the received `sessions` list. For **meeting** calls, read only the `caller` property
3. Build your custom participants list based on the `caller` endpoint [identity](/graph/api/resources/identity), and for P2P calls, also include the `callee` endpoint [identity](/graph/api/resources/identity). Collect the `id`, `displayName`, and other properties you require to gather for a participant

## Why don't I see all participants who attended a call while calling list participants_v2 API?

You might not see all participants because the [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) API supports pagination, limiting the number of participants in the response to 60 per page. If there were more than 60 users on the call, the first call record response contains 60 participants along with a `@odata.nextLink` property. This property includes the URL to call the API and receive the next set of participants. Continue this process until the next link is empty, indicating that there are no more participants to retrieve.

## Why do I receive a 404 Not Found error?

There are several reasons you might encounter a 404 Not Found error:

* **Recent Call**: If the call was made within the last 60 minutes, the call record might not be generated yet. Wait until 60 minutes have elapsed from when the call ended and try again.
* **Old Call**: If the call is older than 30 days, the Graph Call Records API returns a 404 Not Found error by design.
* **Other Issues**: If neither of the reasons apply, check for any reported outages by the Graph Call Records API team in the "Health" tab of the [Teams Admin Portal](https://admin.teams.microsoft.com/). Additionally, you can open a [Support Ticket](https://developer.microsoft.com/graph/support) with the Graph Call Records API team for assistance.
