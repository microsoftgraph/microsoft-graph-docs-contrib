---
title: "Delete learningContent"
description: "Delete the specified learningContent resource that represents the metadata of the specified provider's ingested content."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Delete learningContent

Namespace: microsoft.graph

Delete the specified [learningContent](../resources/learningcontent.md) resource that represents the metadata of the specified provider's ingested content.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningprovider_delete_learningcontents" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningprovider-delete-learningcontents-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

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
DELETE https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents/77029588-a660-46b6-ba58-3ce4d21d5678/$ref
```

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
DELETE https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents(externalId='27rg2ifb28gf28')/$ref
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
