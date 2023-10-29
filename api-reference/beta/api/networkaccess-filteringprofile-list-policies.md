---
title: "List filtering policies"
description: "Retrieve a list of filtering policy links associated with a specific filtering profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# List policies
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of filtering policy links associated with a specific filtering profile.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/ 
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_forwardingpolicylink"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/filteringProfiles
```



---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.forwardingPolicyLink)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles(policies(policy()),conditionalAccessPolicies())",
    "value": [
        {
            "priority": 100,
            "createdDateTime": "2023-10-29T11:35:09Z",
            "id": "37e746aa-4473-4aee-bd3a-1838d67b6311",
            "name": "Block Social",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-10-29T11:35:09Z",
            "policies@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('37e746aa-4473-4aee-bd3a-1838d67b6311')/policies(policy())",
            "conditionalAccessPolicies": []
        }
    ]
}
```


