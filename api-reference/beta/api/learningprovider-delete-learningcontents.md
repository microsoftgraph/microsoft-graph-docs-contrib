---
title: "Delete learningContent"
description: "Delete a learningContent object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Delete learningContent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the specified [learningContent](../resources/learningcontent.md) resource that represents the metadata of the specified provider's ingested content.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningContent.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

For a specific learning content based on its ID (primary key):
``` http
DELETE /employeeExperience/learningProviders/{learningProviderId}/learningContents/{learningContentId}/$ref
```

For a specific learning content based on its external ID (secondary key):
``` http
DELETE /employeeExperience/learningProviders/{learningProviderId}/learningContents(externalId='{externalId}')/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Delete a learning content resource based on its ID

The following example shows a request that deletes a learning content resource based on its ID (primary key).

#### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_learningcontent_id",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70", "77029588-a660-46b6-ba58-3ce4d21d5678"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents/77029588-a660-46b6-ba58-3ce4d21d5678/$ref
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-learningcontent-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-learningcontent-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Delete a learning content resource based on its external ID

The following example shows a request that deletes a learning content resource based on its external ID (secondary key).

#### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "delete_learningcontent_externalid",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70", "27rg2ifb28gf28"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents(externalId='27rg2ifb28gf28')/$ref
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
