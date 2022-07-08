---
title: "Delete learningProvider"
description: "Deletes a learningProvider object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
doc_type: apiPageType
---

# Delete learningProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [learningProvider](../resources/learningprovider.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**provider.readwrite**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**Not Supported**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /employeeExperience/learningProviders/{learningProviderId}/$ref
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
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_learningprovider"
}
-->
``` http
DELETE /employeeExperience/learningProviders/{id} 
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

