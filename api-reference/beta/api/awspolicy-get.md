---
title: "Get awsPolicy"
description: "Read the properties and relationships of an awsPolicy object."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get awsPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a single [awsPolicy](../resources/awspolicy.md) object in an AWS authorization system. An AWS policy is an object in AWS that defines the permissions of the associated entity or resource. When a principal, such as a user, makes a request, the policies and their associated permissions determine whether the request is allowed or denied.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/policies/{awsPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [awsPolicy](../resources/awspolicy.md) object in the response body.

## Examples

### Example 1: Retrieve the details of an AWS policy through its id.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_awspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/policies",
  "value": [
    {
      "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz",
      "externalId": "arn:aws:iam::377596131774:policy/AAA-listPutGetAllBuckets",
      "displayName": "AAA-listPutGetAllBuckets",
      "awsPolicyType": "custom"
    }
  ]
}
```

