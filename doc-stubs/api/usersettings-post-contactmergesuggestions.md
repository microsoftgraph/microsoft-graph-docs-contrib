---
title: "Create contactMergeSuggestions"
description: "Create a new contactMergeSuggestions object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create contactMergeSuggestions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [contactMergeSuggestions](../resources/contactmergesuggestions.md) object.

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
POST ** Collection URI for Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.contactMergeSuggestions not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [contactMergeSuggestions](../resources/contactmergesuggestions.md) object.

You can specify the following properties when creating a **contactMergeSuggestions**.

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [contactMergeSuggestions](../resources/contactmergesuggestions.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_contactmergesuggestions_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.contactMergeSuggestions not found
Content-Type: application/json
Content-length: 126

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.contactMergeSuggestions",
  "isEnabled": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.contactMergeSuggestions"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.contactMergeSuggestions",
  "isEnabled": "Boolean"
}
```

