---
title: "teamwork: sendActivityNotificationToRecipients"
description:  Send activity feed notifications to multiple users, in bulk.
author: eddie-lee-msft
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType

---

# teamwork: sendActivityNotificationToRecipients

Namespace: microsoft.graph

Send activity feed notifications to multiple users, in bulk. 

For more details about sending notifications and the requirements for doing so, see
[sending Teams activity notifications](/graph/teams-send-activityfeednotifications).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | TeamsActivity.Send                          |
| Delegated (personal Microsoft account) | Not Supported.                              |
| Application                            | TeamsActivity.Send                          |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /teamwork/sendActivityNotificationToRecipients
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter          | Type                                                         | Description                                                  |
| :----------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| topic              | [teamworkActivityTopic](../resources/teamworkactivitytopic.md) | Topic of the notification. Specifies the resource being talked about. |
| activityType       | String                                                       | Activity type. This must be declared in the [Teams app manifest](/microsoftteams/platform/overview). |
| chainId            | Int64                                                        | Optional. Used to override a previous notification. Use the same `chainId` in subsequent requests to override the previous notification. |
| previewText        | [itemBody](../resources/itembody.md)                         | Preview text for the notification. Microsoft Teams will only show first 150 characters. |
| templateParameters | [keyValuePair](../resources/keyvaluepair.md) collection      | Values for template variables defined in the activity feed entry corresponding to `activityType` in [Teams app manifest](/microsoftteams/platform/overview). |
| teamsAppId         | String                                                       | Optional. Teams app ID of the Teams app associated with the notification. Used to disambiguate installed apps when multiple apps with the same Azure AD app ID are installed for the same recipient user. |
| recipients         | [teamworkNotificationRecipient](../resources/teamworknotificationrecipient.md) collection | Recipients of the notification. Only recipients of type [aadUserNotificationRecipient](../resources/aadusernotificationrecipient.md) are supported. There is an upper limit of 100 recipients in a single request. |

The following resource is supported when setting the `source` value of the **topic** property to `entityUrl`:

- [teamsCatalogApp](../resources/teamscatalogapp.md)

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Example 1: Notify multiple users about pending finance approval requests

The following example shows how to send an activity feed notification to multiple users in bulk. This example notifies multiple stakeholders about pending finance approval requests.

#### Request

``` http
POST https://graph.microsoft.com/v1.0/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/{teamsAppId}"
    },
    "activityType": "pendingFinanceApprovalRequests",
    "previewText": {
        "content": "Internal spending team has a pending finance approval requests"
    },
    "recipients": [
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "ab88234e-0874-477c-9638-d144296ed04f"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
    	}
    ],
    "templateParameters": [
        {
            "name": "pendingRequestCount",
            "value": "5"
        }
    ] 
}
```

---


#### Response

<!-- {
  "blockType": "response",
  "truncated": false
}
-->

``` http
HTTP/1.1 202 Accepted
```

### Example 2: Notify multiple users about an event using a custom topic

If you want to link an aspect that is not represented by Microsoft Graph, or you want to customize the name, you can set the source of the `topic` to `text` and pass in a custom value for it. **webUrl** is required when using `topic` source as `text`.

#### Request

``` http
POST https://graph.microsoft.com/v1.0/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Deployment Approvals Channel",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "activityType": "deploymentApprovalRequired",
    "previewText": {
        "content": "New deployment requires your approval"
    },
    "templateParameters": [
        {
            "name": "deploymentId",
            "value": "6788662"
        }
    ],
    "recipients": [
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "ab88234e-0874-477c-9638-d144296ed04f"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
    	}
    ]
}
```

---


#### Response

<!-- {
  "blockType": "response",
  "truncated": false
}
-->


``` http
HTTP/1.1 202 Accepted
```
