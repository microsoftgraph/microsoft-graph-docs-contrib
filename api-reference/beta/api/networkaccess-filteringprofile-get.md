---
title: "Get filteringProfile"
description: "Read the properties and relationships of a microsoft.graph.networkaccess.filteringProfile object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get filteringProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.

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
GET /networkAccess/filteringProfiles/{filteringProfileId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_filteringprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/filteringProfiles/9020f79d-71f6-4650-83a9-6b532479578f/policies
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringProfile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles(policies(policy()))/$entity",
    "priority": 800,
    "createdDateTime": "2023-07-11T15:38:37Z",
    "id": "9020f79d-71f6-4650-83a9-6b532479578f",
    "name": "test profile",
    "description": null,
    "state": "enabled",
    "version": "1.0.0",
    "lastModifiedDateTime": "2023-10-16T06:23:53Z",
    "policies@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('9020f79d-71f6-4650-83a9-6b532479578f')/policies(policy())",
    "policies": []
}
```

