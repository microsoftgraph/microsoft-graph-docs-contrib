---
title: "Delete authorityTemplate"
description: "Delete an authorityTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Delete authorityTemplate
Namespace: microsoft.graph.security

Delete a [authorityTemplate](../resources/security-authoritytemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application| RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/labels/authorities/{authorityTemplateId}/$ref
DELETE /security/labels/retentionLabels/{retentionLabelId}/descriptors/authorityTemplate/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "delete_authoritytemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/security/labels/authorities/6cf65e55-6baf-44ff-5dcc-08d8de97b1d5
```


### Response
Here's an example of the response.
>
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

