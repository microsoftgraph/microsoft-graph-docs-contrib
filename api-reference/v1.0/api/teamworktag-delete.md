---
title: "Delete teamworkTag"
description: "Deletes a teamworkTag object."
author: "seankeating"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Delete teamworkTag
Namespace: microsoft.graph

Delete a [tag](../resources/teamworktag.md) object. 

>**Note:** The tag will not be recoverable once it is deleted using this API.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkTag.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkTag.ReadWrite.All|

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{team-Id}/tags/{teamworkTag-Id}
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

### Request
<!-- {
  "blockType": "request",
  "name": "delete_teamworktag"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags/MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==
```
---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

