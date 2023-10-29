---
title: "List filteringProfiles"
description: "Get a list of the microsoft.graph.networkaccess.filteringProfile objects and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List filteringProfiles
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/filteringProfiles
```

## Optional query parameters
This method does not supports OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringProfile](../resources/networkaccess-filteringprofile.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringProfile)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.filteringProfile",
      "id": "da1b7ff3-fbc1-f307-4ac7-f6aa4956055e",
      "name": "String",
      "description": "String",
      "state": "String",
      "version": "String",
      "lastModifiedDateTime": "String (timestamp)",
      "priority": "Integer",
      "createdDateTime": "String (timestamp)"
    }
  ]
}
```

