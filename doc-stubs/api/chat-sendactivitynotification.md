---
title: "chat: sendActivityNotification"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# chat: sendActivityNotification
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
POST /chats/{chatsId}/sendActivityNotification
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|topic|[teamworkActivityTopic](../resources/teamworkactivitytopic.md)|**TODO: Add Description**|
|activityType|String|**TODO: Add Description**|
|chainId|Int64|**TODO: Add Description**|
|previewText|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|teamsAppId|String|**TODO: Add Description**|
|templateParameters|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description**|
|recipient|[teamworkNotificationRecipient](../resources/teamworknotificationrecipient.md)|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "chat_sendactivitynotification"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats/{chatsId}/sendActivityNotification

Content-Type: application/json
Content-length: 428

{
  "topic": {
    "@odata.type": "microsoft.graph.teamworkActivityTopic"
  },
  "activityType": "String",
  "chainId": "Integer",
  "previewText": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "teamsAppId": "String",
  "templateParameters": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "recipient": {
    "@odata.type": "microsoft.graph.aadUserNotificationRecipient"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

