---
title: "Microsoft Graph Call Records API FAQ"
description: "Find answers to frequently asked questions about the call records API and call records notification feed in Microsoft Graph."
author: "MirraRaine"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
ms.date: 11/07/2024
ms.topic: faq
---

# Microsoft Graph call records API FAQ

This topic provides answers to frequently asked questions about the call records API in Microsoft Graph.

## What is the Microsoft Graph call records API?

The Microsoft Graph call records API offers usage and diagnostic insights for calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. Organizations, also referred to as "tenants", can use the call records API to subscribe to, list, retrieve call records by call IDs, and look up calls for a participant. For more information, see [Working with the call records API in Microsoft Graph](/graph/api/resources/callrecords-api-overview).

## Which permission is required to use the call records API?

Your application needs the **CallRecords.Read.All** permission to access call records in Microsoft Graph. An administrator must grant this permission to the application. For more information, see [Microsoft Graph permissions reference](permissions-reference.md).

## Can I use delegated permissions with the call records API?

No, the call records API doesn't support delegated permissions.

## Why can't I use delegated permissions with the call records API?

You can't use delegated permissions because there's no way to limit **CallRecords.Read.All** permission to specific calls or users. The application permission is granted at the organization level, not the individual user level.

## How do I request a call record using the call records API?

To request a call record, you need to make a `GET` request to the `/communications/callRecords/{id}` endpoint, where `{id}` is the unique identifier of your call. Make sure that you have the **CallRecords.Read.All** permission and include the Authorization header with a valid bearer token. For more information, see [Get callRecord documentation](/graph/api/callrecords-callrecord-get).

## Where can I find the call IDs of the calls that occurred in my organization?

You can find and collect call IDs in the following ways:

* **Subscribe to notifications**: Subscribe to [change notifications feed](changenotifications-for-callrecords.md) and receive notifications containing call IDs whenever a new call record is created.
* **List call records**: Get a list of call IDs by requesting it from [List callRecords API](/graph/api/callrecords-cloudcommunications-list-callrecords).
* **Manual search**: If you have access to [Call Analytics](/microsoftteams/use-call-analytics-to-troubleshoot-poor-call-quality) within the [Teams Admin Center](/microsoftteams/teams-overview) for Microsoft Teams, you can manually search for a call ID in a user’s history. However, no automated system is available to retrieve all call IDs from Call Analytics.
* **Use callChainId:**: Look up the call ID using the `callChainId` from the [Get call](/graph/api/resources/call) API after the call is completed. Use this approach when the call is programmatically created and you're working with the [call resource type](/graph/api/resources/call). Also, the `callChainId` can differ from the call record ID in certain scenarios, such as transfer calls, due to architecture specifics. Therefore, use the other methods in this list when possible.

## When is a call record available?

A first version of a call record is typically generated and a notification is sent within 30 minutes after a call ends. However, it can take up to 150 minutes for the service to make the call record available. For more information, see [Latency](/graph/api/resources/subscription#latency) page.

## How long are call records retained?

Call records are retained for 30 days after the call ends.

## Can I retrieve call records older than 30 days?

No, the call records API doesn't return call records older than 30 days. Requests for such records result in a `404 Not Found` error response.

## Why is my first call record notification delayed?

Your call record notification can be delayed because it can take up to 150 minutes for the service to make the **first** version of a call record available. If you experience a longer delay for delivery of the first call record version, check for outages reported by the call records API team in the **Health** tab of the [Teams Admin portal](https://admin.teams.microsoft.com/). Also, you can open a [support ticket](https://developer.microsoft.com/graph/support) with the call records API team.

## Why are subsequent versions of my call record delayed?

Subsequent versions of a call record can be delivered after the initial 150-minute latency. This means that while the first version is available within 150 minutes, later updates to the call record can arrive later due to delayed telemetry from the client and other factors.

## Why does a call record have missing fields?

A call record can have missing fields due to delayed telemetry from a client. When new telemetry data becomes available, the system generates a new call record with updated information, increments the `version` property value, and sends the updated call record to you. If your call record is missing properties, wait for the next call record version.

However, it's important to note that some fields can remain empty by design or because the client telemetry never arrived, such as media stream values.

If critical or previously delivered fields are missing, open a [support ticket](https://developer.microsoft.com/graph/support) with the call records API team.

## How can I list all participants who attended a call?

You can use the following methods to list all attending call participants:

1. **List participants_v2 API**

    Use the [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) API to collect the full list of participants for a requested call ID.

2. **Use the $expand OData query parameter on the callRecords object to expand the participants_v2 property**

    You can call `GET communications/callRecords/{id}?$expand=participants_v2` to retrieve high-level call details along with the list of participants.

3. **Build a custom participants list**

    To see all participants, implement a custom solution to build the participants list from the call records data:

    1. Call the [Get callRecord](/graph/api/callrecords-callrecord-get) API and expand the `sessions` property: `GET /communications/callRecords/{id}?$expand=sessions`.
    2. For peer-to-peer (P2P) calls, read both the `caller` and `callee` properties from each `session` in the received `sessions` list. For meeting calls, read only the `caller` property.
    3. Build your custom participants list based on the `caller` endpoint [identity](/graph/api/resources/identity). For P2P calls, also include the `callee` endpoint [identity](/graph/api/resources/identity). Collect the `id`, `displayName`, and other properties you require for each participant.

## Why don't I see all participants who attended a call while calling list participants_v2 API?

You might not see all participants because the [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) API supports pagination, limiting the number of participants in the response to 130 per page. If there were more than 130 users on the call, the first call record response contains 130 participants along with a `@odata.nextLink` property. This property includes the URL to call the API and receive the next set of participants. Continue this process until the next link is empty, which indicates that there are no more participants to retrieve.

## Why are there duplicate sessions returned for one call record?

A call record [session](/graph/api/resources/callrecords-session) uniquely represents a single user-user communication in peer-to-peer calls or a single user-service communication in a group call or meeting. However, in some calling scenarios a single user-service communication can involve multiple service identities in a single session, such as a virtual transfer between an auto attendant and a call queue. In these scenarios, a session ID might be duplicated one or more times in order to properly represent each identity involved in the communication and the respective communication duration.

## Why do I receive a 404 Not Found error?

The following are some reasons why you might encounter a `404 Not Found` error:

* **Recent call**: If the call was made within the last 150 minutes, the call record might not be generated yet. Wait 150 minutes after the call ended and try again.
* **Old call**: If the call is older than 30 days, the call records API returns a `404 Not Found` error by design.
* **Other issues**: If neither of the reasons apply, check for any outages reported by the call records API team in the **Health** tab of the [Teams Admin portal](https://admin.teams.microsoft.com/). Also, you can open a [support ticket](https://developer.microsoft.com/graph/support) with the call records API team for assistance.
