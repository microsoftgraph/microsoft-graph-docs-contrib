---
title: "serviceUpdateMessage: markRead"
description: "Change the status of a list of service update messages to read for the login user."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: apiPageType
---

# serviceUpdateMessage: markRead
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Change the status of a list of service update messages to read for the login user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ServiceMessageViewpoint.Write|
|Delegated (personal Microsoft account)|ServiceMessageViewpoint.Write|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/serviceAnnouncement/messages/markRead
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
|messageIds|String collection|Tell which messages for the user will be marked wtih **read** status|


## Response

If successful, this action returns a `200 OK` response code and a boolean value true in the response body. Otherwise, will return false in the response body.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "serviceupdatemessage_markread"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages/markRead

Content-Type: application/json
Content-length: 42

{
  "messageIds": ["MC46548", "MC46547"]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Boolean"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Edm.Boolean",
  "value": true
}
```