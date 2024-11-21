---
title: "aiInteractionHistory: getAllEnterpriseInteractions" 
description: "Get all Copilot interactions data, including both a user prompt to Copilot and the Copilot response."
ms.date: 11/18/2024
author: "bkeerthivasa"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
---

# aiInteractionHistory: getAllEnterpriseInteractions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all Copilot interactions data, including both a user prompt to Copilot and the Copilot response. This API captures the user intent, the resources accessed by Copilot, and the response to the user for Microsoft 365 Copilot apps such as Teams, Word, and Outlook.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "aiinteractionhistory-getallenterpriseinteractions" } -->
[!INCLUDE [permissions-table](../includes/permissions/aiinteractionhistory-getallenterpriseinteractions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /copilot/users/{id}/interactionHistory/getAllEnterpriseInteractions
```

## Optional query parameters

You can use the `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses), as shown in the following examples.

<!-- { "blockType": "ignored" } -->
```http
GET /copilot/users/{id}/interactionHistory/getAllEnterpriseInteractions?model=A
GET /copilot/users/{id}/interactionHistory/getAllEnterpriseInteractions?model=B
```

If no `model` parameter is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) is used.

This method supports [date range parameters](/graph/query-parameters) to customize the response, as shown in the following example.

<!-- { "blockType": "ignored" } -->
``` http
GET /copilot/users/{id}/interactionHistory/getAllEnterpriseInteractions?$filter=createdDateTime gt 2024-09-09T16:48:35Z and createdDateTime lt 2024-11-15T21:48:35Z
```

This method also supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. The following table shows an example.

|Scenario|Example|
|:-------|:------|
|Get the Copilot messages for a particular source|`$filter=appClass eq 'IPM.SkypeTeams.Message.Copilot.Word' or appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'`|

## Request headers

|Header|Value|
|:-----|:----|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [aiInteraction](../resources/aiinteraction.md) objects in the response body.

## Examples

### Example 1: Retrieve all the Copilot interactions without any filters

The following example shows a request that gets all the Copilot interactions for a user.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "aiInteraction_getAllEnterpriseInteractions_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/copilot/users/9fcefe95-9677-483e-a3c1-22c5d501d737/interactionHistory/getAllEnterpriseInteractions
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.aiInteraction"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.aiInteraction)",
  "@odata.count": 10,
  "@odata.nextLink": "https://graph.microsoft.com/beta/copilot/users/4db02e4b-d144-400e-b194-53253a34c5be/interactionHistory/getAllEnterpriseInteractions?$skiptoken=U2tpcFZhbHVlPTEwI01haWxib3hGb2xkZXI9TWFpbEZvbGRlcnMvVGVhbXNNZXNzYWdlc0RhdGE%3d",
  "value": [
    {
      "id": "1731701801008",
      "sessionId": "19:icg2t_AWPYJyJ2oDLB_CZyh29QXpZvbdpljKf7qKotk1@thread.v2",
      "requestId": "7336770c-fb25-48ac-8303-4493ad11ed71",
      "appClass": "IPM.SkypeTeams.Message.Copilot.Teams",
      "interactionType": "aiResponse",
      "conversationType": "appchat",
      "etag": "1731701801008",
      "createdDateTime": "2024-11-15T20:16:41.008Z",
      "locale": "en-us",
      "contexts": [
        {
          "contextReference": "https://microsoft.teams.com/threads/19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
          "displayName": "Teams Meeting Copilot",
          "contextType": "TeamsMeeting"
        }
      ],
      "from": {
        "@odata.type": "#microsoft.graph.chatMessageFromIdentitySet",
        "device": null,
        "user": null,
        "application": {
          "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
          "id": "fb8d773d-7ef8-4ec0-a117-179f88add510",
          "displayName": "Copilot in Teams",
          "applicationIdentityType": "bot"
        }
      },
      "body": {
        "contentType": "text",
        "content": "I use the transcript to generate insights, and need to hear more discussion before I can get to work. Please try again in a few minutes.<attachment id=\"19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2\"></attachment>"
      },
      "attachments": [
        {
          "attachmentId": "19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
          "contentType": "reference",
          "contentUrl": "https://microsoft.teams.com/threads/19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
          "content": null,
          "name": "Teams Meeting Copilot"
        }
      ],
      "links": [],
      "mentions": []
    }
  ]
}
```

### Examples 2: Get all the Copilot interactions for a user with app class filters

The following example shows a request that gets all the Copilot interactions for a user with app class filters.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "aiInteraction_getAllEnterpriseInteractions_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/copilot/users/4db02e4b-d144-400e-b194-53253a34c5be/interactionHistory/getAllEnterpriseInteractions?$filter=appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.aiInteraction"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.aiInteraction)",
	"@odata.count": 2,
	"@odata.nextLink": "https://graph.microsoft.com/beta/copilot/users/4db02e4b-d144-400e-b194-53253a34c5be/interactionHistory/getAllEnterpriseInteractions?$filter=appClass+eq+%27IPM.SkypeTeams.Message.Copilot.BizChat%27&$skiptoken=U2tpcFZhbHVlPTAjTWFpbGJveEZvbGRlcj1NYWlsRm9sZGVycy9UZWFtQ2hhdA%3d%3d",
	"value": [
		{
			"id": "1732148357313",
			"sessionId": "19:YzBP1kUdkNjFtJnketPYT8kQdQ3A08Y51rDTxE_ENIk1@thread.v2",
			"requestId": "f128b7a9-657e-b420-201e-5602114a29f4",
			"appClass": "IPM.SkypeTeams.Message.Copilot.BizChat",
			"interactionType": "aiResponse",
			"conversationType": "bizchat",
			"etag": "1732148357313",
			"createdDateTime": "2024-11-21T00:19:17.313Z",
			"locale": "en-us",
			"contexts": [],
			"from": {
				"@odata.type": "#microsoft.graph.chatMessageFromIdentitySet",
				"device": null,
				"user": null,
				"application": {
					"@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
					"id": "fb8d773d-7ef8-4ec0-a117-179f88add510",
					"displayName": "Microsoft 365 Chat",
					"applicationIdentityType": "bot"
				}
			},
			"body": {
				"contentType": "html",
				"content": "<attachment id=\"4062fb240a03490b98ccd7c86bb2bcbf\"></attachment>"
			},
			"attachments": [
				{
					"attachmentId": "4062fb240a03490b98ccd7c86bb2bcbf",
					"contentType": "application/vnd.microsoft.card.adaptive",
					"contentUrl": null,
					"content": "{\r\n  \"type\": \"AdaptiveCard\",\r\n  \"version\": \"1.0\",\r\n  \"body\": [\r\n    {\r\n      \"type\": \"TextBlock\",\r\n      \"text\": \"It looks like there were no important emails from last week. However, I found some relevant meetings and files that might be of interest to you.\\n\\nFrom your meetings last week:\\n- **[test meeting2 - export api](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI6AAA%3d)**: You discussed the need to send a reminder about an upcoming event, possibly Ignite, scheduled for next week. You emphasized the importance of the event and the reminder[1](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI6AAA%3d).\\n- **[new meeting to test copilot interaction in meetings](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI5AAA%3d)**: This meeting was held last Friday from 12:30 PM to 1 PM[2](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI5AAA%3d).\\n- **[teste meeting](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABAvsP6AAA%3d)**: You explained the significance of the Nobel Prize in Economics and announced the 2024 Nobel Prize winners, Darren Simon Johnson and James A. Robinson[3](https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABAvsP6AAA%3d).\\n\\nAdditionally, there is a file titled **[OnCall DRI Handbook-v3](https://m365cpi17278319-my.sharepoint.com/personal/corat_m365cpi17278319_onmicrosoft_com/Documents/Microsoft%20Copilot%20Chat%20Files/OnCall%20DRI%20Handbook-v3.pdf?web=1)** that you last modified on February 4th, 2021. This document provides guidelines on handling incidents and includes important terminology and procedures[4](https://m365cpi17278319-my.sharepoint.com/personal/corat_m365cpi17278319_onmicrosoft_com/Documents/Microsoft%20Copilot%20Chat%20Files/OnCall%20DRI%20Handbook-v3.pdf?web=1).\\n\\nIs there anything specific you would like to know more about?\",\r\n      \"wrap\": true\r\n    },\r\n    {\r\n      \"type\": \"TextBlock\",\r\n      \"id\": \"MessageTextField\",\r\n      \"text\": \"It looks like there were no important emails from last week. However, I found some relevant meetings and files that might be of interest to you.\\n\\nFrom your meetings last week:\\n- **test meeting2 - export api[3]**: You discussed the need to send a reminder about an upcoming event, possibly Ignite, scheduled for next week. You emphasized the importance of the event and the reminder[^2^].\\n- **new meeting to test copilot interaction in meetings[3]**: This meeting was held last Friday from 12:30 PM to 1 PM[^3^].\\n- **teste meeting[3]**: You explained the significance of the Nobel Prize in Economics and announced the 2024 Nobel Prize winners, Darren Simon Johnson and James A. Robinson[^4^].\\n\\nAdditionally, there is a file titled **OnCall DRI Handbook-v3[2]** that you last modified on February 4th, 2021. This document provides guidelines on handling incidents and includes important terminology and procedures[^1^].\\n\\nIs there anything specific you would like to know more about?\",\r\n      \"wrap\": true\r\n    }\r\n  ]\r\n}",
					"name": null
				}
			],
			"links": [
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI6AAA%3d&EntityRepresentationId=eed881a3-3121-4c71-8667-942284009b65",
					"displayName": "test meeting2 - export api",
					"linkType": "Event"
				},
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI6AAA%3d",
					"displayName": "test meeting2 - export api",
					"linkType": "Meeting"
				},
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI5AAA%3d&EntityRepresentationId=f0ccfd8e-4503-4a1d-b843-b61d63bc0cc0",
					"displayName": "new meeting to test copilot interaction in meetings",
					"linkType": "Event"
				},
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABCrxI5AAA%3d",
					"displayName": "new meeting to test copilot interaction in meetings",
					"linkType": "Meeting"
				},
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABAvsP6AAA%3d&EntityRepresentationId=c619b244-8016-45ca-a0fb-e6a55d28d252",
					"displayName": "teste meeting",
					"linkType": "Event"
				},
				{
					"linkUrl": "https://teams.microsoft.com/l/meeting/details?eventId=AAMkADcyZTMzNWZhLWE1YjAtNDc3Mi04MzBlLTc2NzEzOTE0MmU1ZQBGAAAAAAC5e4DRHIMCQJ-tS6nB82CZBwCMIOyf3WTwTIsBMwZamp77AAAAAAENAACMIOyf3WTwTIsBMwZamp77AABAvsP6AAA%3d",
					"displayName": "teste meeting",
					"linkType": "Meeting"
				},
				{
					"linkUrl": "https://m365cpi17278319-my.sharepoint.com/personal/corat_m365cpi17278319_onmicrosoft_com/Documents/Microsoft%20Copilot%20Chat%20Files/OnCall%20DRI%20Handbook-v3.pdf?web=1&EntityRepresentationId=025f05ac-5d7e-4ee1-b616-a786cd13d8c2",
					"displayName": "OnCall DRI Handbook-v3.pdf",
					"linkType": "File"
				}
			],
			"mentions": []
		},
		{
			"id": "1732148356886",
			"sessionId": "19:YzBP1kUdkNjFtJnketPYT8kQdQ3A08Y51rDTxE_ENIk1@thread.v2",
			"requestId": "f128b7a9-657e-b420-201e-5602114a29f4",
			"appClass": "IPM.SkypeTeams.Message.Copilot.BizChat",
			"interactionType": "userPrompt",
			"conversationType": "bizchat",
			"etag": "1732148356886",
			"createdDateTime": "2024-11-21T00:19:16.886Z",
			"locale": "en-us",
			"contexts": [],
			"from": {
				"@odata.type": "#microsoft.graph.chatMessageFromIdentitySet",
				"application": null,
				"device": null,
				"user": {
					"@odata.type": "#microsoft.graph.teamworkUserIdentity",
					"id": "4db02e4b-d144-400e-b194-53253a34c5be",
					"displayName": "8:orgid:4db02e4b-d144-400e-b194-53253a34c5be",
					"userIdentityType": "aadUser",
					"tenantId": "061ea7c2-cc15-418b-bfc0-9f6a7d98011c"
				}
			},
			"body": {
				"contentType": "text",
				"content": "What should be on my radar from emails last week?"
			},
			"attachments": [],
			"links": [],
			"mentions": []
		}
	]
}
```

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
