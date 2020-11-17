---
title: "List aadUserConversationMembers"
description: "Get a list of the aadUserConversationMember objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List aadUserConversationMembers
Namespace: microsoft.graph

Get a list of the [aadUserConversationMember](../resources/aaduserconversationmember.md) objects and their properties.

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
GET ** Collection URI for Microsoft.Teams.GraphSvc.aadUserConversationMember not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [aadUserConversationMember](../resources/aaduserconversationmember.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_aaduserconversationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for Microsoft.Teams.GraphSvc.aadUserConversationMember not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.aadUserConversationMember)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.aadUserConversationMember",
      "id": "d39b275e-275e-d39b-5e27-9bd35e279bd3",
      "roles": [
        "String"
      ],
      "displayName": "String",
      "userId": "String",
      "email": "String"
    }
  ]
}
```

