---
title: "Create chatMessageHostedContent"
description: "Create a new chatMessageHostedContent object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create chatMessageHostedContent
Namespace: microsoft.graph

Create a new [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/hostedContents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) object.

The following table shows the properties that are required when you create the [chatMessageHostedContent](../resources/chatmessagehostedcontent.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_chatmessagehostedcontent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/hostedContents
Content-Type: application/json
Content-length: 75

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.chatMessageHostedContent"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.chatMessageHostedContent"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.chatMessageHostedContent",
  "id": "f2dffcf1-fcf1-f2df-f1fc-dff2f1fcdff2"
}
```

