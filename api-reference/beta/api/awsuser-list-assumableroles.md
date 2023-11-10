---
title: "List assumableRoles"
description: "Get the awsRole resources from the assumableRoles navigation property."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List assumableRoles
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the awsRole resources from the assumableRoles navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{awsUserId}/assumableRoles
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsRole](../resources/awsrole.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_awsrole"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/YWxpY2VAY29udG9zby5jb20/assumableRoles
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpyb2xlL3NlcnZpY2Vyb2xlMQ",
      "externalId": "arn:aws:iam::123456789012:role/servicerole1",
      "displayName": "servicerole1",
      "roleType": "system",
      "trustEntityType": "service",
      "source": {
        "@odata.type": "#microsoft.graph.awsSource",
        "accountId": "123456789012",
        "identityProviderType": "aws"
      }
    },
    {
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpyb2xlL2N1c3RvbXJvbGUx",
      "externalId": "arn:aws:iam::123456789012:role/customrole1",
      "displayName": "customrole1",
      "roleType": "custom",
      "trustEntityType": "sso,crossAccount",
      "source": {
        "@odata.type": "#microsoft.graph.awsSource",
        "accountId": "123456789012",
        "identityProviderType": "aws"
      }

    }
  ]
}
```

