---
title: "aiInteractionHistory-getAllEnterpriseInteractions" 
description: "Get all Copilot interaction data between the user and Copilot."
ms.date: 11/18/2024
author: "bkeerthivasa"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
---

# aiInteractionHistory-getAllEnterpriseInteractions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all Copilot interactions data, including both the user prompt to Copilot and the Copilot response. This API captures the user intent and Copilot-accessed resources and the response to the user for Microsoft 365 Copilot apps such as Teams, Word, and Outlook.

This API returns an [aiInteraction](../resources/aiinteraction.md) resource.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "aiInteractionHistory-getAllEnterpriseInteractions" } -->
[!INCLUDE [permissions-table](../includes/permissions/aiInteractionHistory-getAllEnterpriseInteractions-permissions.md)]

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

This method also supports [date range parameters](/graph/query-parameters) to customize the response, as shown in the following example.

<!-- { "blockType": "ignored" } -->
``` http
GET /copilot/users/{id}/interactionHistory/getAllEnterpriseInteractions?$filter=createdDateTime gt 2024-09-09T16:48:35Z and createdDateTime lt 2024-11-15T21:48:35Z
```

This method also supports the `$filter` query parameter. The following table shows an example.

|Scenario|`$filter` parameter|
|:-------|:------------------|
|Get the copilot messages for a particular source|$filter=appClass eq 'IPM.SkypeTeams.Message.Copilot.Word' or appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'|

## Request headers
|Header|Value|
|:-----|:----|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a list of [aiInteraction](../resources/aiinteraction.md) in the response body.

## Examples 1: Retrieve all the copilot interactions without any filters

### Request that gets all the copilot interactions for a user.

The following example shows a request that gets all the copilot interactions for a user.

<!-- {
  "blockType": "request",
  "name": "aiInteraction_getAllEnterpriseInteractions_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/copilot/users/9fcefe95-9677-483e-a3c1-22c5d501d737/interactionHistory/getAllEnterpriseInteractions
```

### Response

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

## Examples 2: Get all the copilot interactions for a user with app class filters

### Request that gets all the copilot interactions for a user.

The following example shows a request that gets all the copilot interactions for a user with app class filters.
<!-- {
  "blockType": "request",
  "name": "aiInteraction_getAllEnterpriseInteractions_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/copilot/users/9fcefe95-9677-483e-a3c1-22c5d501d737/interactionHistory/getAllEnterpriseInteractions
```

### Response

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
			"id": "1731701571329",
			"sessionId": "19:qYefb51_J8WZKud8n4GDSwvbX5YMY_CxcFPW4113cKg1@thread.v2",
			"requestId": "a55b7cbd-567b-2bfe-33b0-37a7814e8eff",
			"appClass": "IPM.SkypeTeams.Message.Copilot.BizChat",
			"interactionType": "aiResponse",
			"conversationType": "bizchat",
			"etag": "1731701571329",
			"createdDateTime": "2024-11-15T20:12:51.329Z",
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
				"content": "<attachment id=\"536d43717ec04a72b5eae0dba4da2a12\"></attachment>"
			},
			"attachments": [
				{
					"attachmentId": "536d43717ec04a72b5eae0dba4da2a12",
					"contentType": "application/vnd.microsoft.card.adaptive",
					"contentUrl": null,
					"content": "{\r\n  \"type\": \"AdaptiveCard\",\r\n  \"version\": \"1.0\",\r\n  \"body\": [\r\n    {\r\n      \"type\": \"TextBlock\",\r\n      \"text\": \"It looks like you were about to ask for help preparing for something. Could you please provide more details or specify which meeting or task you need help with? This will help me provide you with the most relevant information and materials.\",\r\n      \"wrap\": true\r\n    }\r\n  ]\r\n}",
					"name": null
				}
			],
			"links": [],
			"mentions": []
		}
	]
}
```

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
