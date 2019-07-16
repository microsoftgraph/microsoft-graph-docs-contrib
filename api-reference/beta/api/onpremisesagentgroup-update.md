---
title: "Update onPremisesAgentGroup"
description: "Update onPremisesAgentGroup."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update onPremisesAgentGroup

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | OnPremisesPublishingProfiles.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /onPremisesPublishingProfiles(publishingType)/agentGroups
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.
Below is the list of properties that could be updated:

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String||

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisesagentgroup"
}-->

```http
PATCH https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/agentGroups/('8832388F-3814-4952-B288-FFB62081FE25')
Content-type: application/json

{
    "displayName": "Group New Name"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesAgentGroup"
} -->

```http
HTTP/1.1 204
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update onpremisesagentgroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->