---
title: "List filteringPolicyLinks"
description: "Get a list of the microsoft.graph.networkaccess.filteringPolicyLink objects and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List filteringPolicyLinks
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects and their properties.

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
GET /filteringProfiles/{filteringProfileId}/policies
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringPolicyLink](../resources/filteringpolicylink.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringpolicylink"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/filteringProfiles/519085fd-efb2-437c-af22-04bff0c2b571/policies
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringPolicyLink)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('519085fd-efb2-437c-af22-04bff0c2b571')/policies",
    "value": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
            "id": "0f55c3c1-5502-48a6-8c49-570448226368",
            "state": "enabled",
            "version": "1.0.0",
            "priority": 100,
            "action": "block",
            "loggingState": "enabled",
            "lastModifiedDateTime": "2023-06-20T23:14:03Z",
            "createdDateTime": "2023-06-20T23:14:03Z",
            "policy": {
                "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
                "id": "9f875dd1-c1d4-484a-a967-b428e4e1cafe",
                "name": "Social Media siteswer",
                "description": null,
                "version": "1.0.0",
                "lastModifiedDateTime": "2023-07-14T22:53:24Z",
                "createdDateTime": "2023-06-05T23:43:53Z"
            }
        }
    ]
}
```

