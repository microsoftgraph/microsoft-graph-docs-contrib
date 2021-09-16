---
title: "Delete organizationalBranding"
description: "Deletes an organizationalBranding object."
author: "AlexanderMars"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete organizationalBranding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the default organizational branding object. To delete the [organizationalBranding](../resources/organizationalbrandinglocalization.md) object, all images (Stream types) must first be removed from the object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Organization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /branding
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

In the request body, supply a JSON representation of the default [organizationalBranding](../resources/organizationalbranding.md) object.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_organizationalbranding"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/branding

{
    "id": "0"
}
```


### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

