---
title: "emailThreatSubmission: review"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# emailThreatSubmission: review
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.ReadWrite.All|
|Delegated (personal Microsoft account)|N/A|
|Application|ThreatSubmission.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /emailThreats/{emailThreatsId}/review
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|category|String|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "emailthreatsubmissionthis.review"
}
-->
``` http
POST https://graph.microsoft.com/beta/emailThreats/{emailThreatsId}/review
Content-Type: application/json
Content-length: 28

{
  "category": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

