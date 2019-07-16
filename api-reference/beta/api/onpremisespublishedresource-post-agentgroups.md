---
title: "Assign publishedResource to onPremisesAgentGroup"
description: "Assign publishedResource to onPremisesAgentGroup."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Assign publishedResource to onPremisesAgentGroup

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to assign [publishedResource](../resources/onpremisespublishedresource.md) object to [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:--------------------------------------|:---------------------------------------------------------|
| Delegated (work or school account)     | OnPremisesPublishingProfiles.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /onPremisesPublishingProfiles(publishingType)/publishedResources(id1)/agentGroups/$ref
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

## Response

If successful, this method returns `201, Created` response code and [publishedResource](../resources/onpremisespublishedresource.md) object  in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_onpremisesagentgroup_from_onpremisespublishingprofile"
}-->

```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/publishedResources('POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/publishedResources('1234b780-965f-4149-85c5-a8c73e58b67d')/agentGroups/$ref)/agentGroups/$ref
Content-type: application/json

```http
{
 "@odata.id": "https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/agentGroups('2B032383-897C-42BA-917E-700B6890BDC3')/"
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
  "description": "Create onPremisesAgentGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->