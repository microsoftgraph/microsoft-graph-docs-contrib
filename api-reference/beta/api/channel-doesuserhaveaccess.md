---
title: "channel: doesUserHaveAccess"
description: "Check whether a user has access to the shared channel or not."
author: "devjha-ms"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# channel: doesUserHaveAccess
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Check whether a [user](../resources/aaduserconversationmember.md) has access to the shared [channel](../resources/channel.md) or not.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | ChannelMember.Read.All, ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMember.Read.All, ChannelMember.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/channels/{channelId}/doesUserHaveAccess
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|Id of the [User](../resources/useridentity.md)|
|tenantId|String|TenantId which the Azure AD [User](../resources/useridentity.md) belongs to. Default value of this property is current tenantId of the logged-in user or app.|
|userPrincipalName|String|User Principal Name (UPN) of the [User](../resources/useridentity.md)|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a Boolean in the response body.

## Examples

### Example 1: Check access for in-tenant user.

#### Request
<!-- {
  "blockType": "request",
  "name": "channel_doesuserhaveaccess"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/{0fddfdc5-f319-491f-a514-be1bc1bf9ddc}//channels/19:33b76eea88574bd1969dca37e2b7a819@thread.skype/doesUserHaveAccess(userId='6285581g-484b-4845-9e01-60667f8b12ae')
```


#### Response
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```


### Example 2: Check access for external tenant user (using tenantId).

#### Request
<!-- {
  "blockType": "request",
  "name": "channel_doesuserhaveaccess_externaluser"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/{0fddfdc5-f319-491f-a514-be1bc1bf9ddc}//channels/19:33b76eea88574bd1969dca37e2b7a819@thread.skype/doesUserHaveAccess(userId='62855810-484b-4823-9e01-60667f8b12ae', tenantId='57fb72d0-d811-46f4-8947-305e6072eaa5')
```


#### Response
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```


### Example 3: Check user access using User Principal Name (UPN)

#### Request
<!-- {
  "blockType": "request",
  "name": "channel_doesuserhaveaccess_usingupn"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/{0fddfdc5-f319-491f-a514-be1bc1bf9ddc}//channels/19:33b76eea88574bd1969dca37e2b7a819@thread.skype/doesUserHaveAccess(userPrincipalName='john.doe@contoso.com')
```


#### Response
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": false
}
```

