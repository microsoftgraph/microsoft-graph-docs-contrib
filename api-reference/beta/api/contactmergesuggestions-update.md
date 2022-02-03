---
title: "Update contactMergeSuggestions"
description: "Update the properties of a contactMergeSuggestions object."
author: "jagadeesh-vadivel"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Update contactMergeSuggestions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [contactMergeSuggestions](../resources/contactmergesuggestions.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|User.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/settings/contactMergeSuggestions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|`true` if the duplicate contact merge suggestions feature is enabled for user; `false` if the feature is disabled. Default is `true`.|



## Response

If successful, this method returns a `204 No Content` response code and the value is updated on the backend.

## Examples

The following example updates the **isEnabled** privacy setting to disable the duplicate contacts merge suggestions feature.

### Request
<!-- {
  "blockType": "request",
  "name": "update_contactmergesuggestions"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/settings/contactMergeSuggestions
Content-Type: application/json

{
  "isEnabled": false
}
```


### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "name": "update_contactmergesuggestions"
}
-->
``` http
HTTP/1.1 204 No Content
```

