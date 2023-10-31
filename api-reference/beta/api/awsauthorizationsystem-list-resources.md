---
title: "List awsAuthorizationSystemResources"
description: "List the awsAuthorizationSystemResource objects and their properties for a provided AWS authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsAuthorizationSystemResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects and their properties for a provided AWS authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/resources
```

## Optional query parameters
This method supports the `$filter` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects in the response body.

## Examples

### Example 1: List the AWS resources for a provided AWS authorization system.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/resources
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsAuthorizationSystemResource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "externalId": "arn:aws:s3:::00-settings-all-bp-none-acl-owner-encryption-none",
      "displayName": "00-settings-all-bp-none-acl-owner-encryption-none",
      "resourceType": "bucket",
      "service": {
        "id": "s3"
      }
    },
    {
      "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTA0ZjVkNWJmOGUwNDZiZDAw",
      "externalId": "arn:aws:ec2:us-west-2:377596131774:instance/i-04f5d5bf8e046bd00",
      "displayName": "apollo-reader-staging",
      "resourceType": "instance",
      "service": {
        "id": "ec2"
      }
    }
  ]
}
```

### Example 2: List all AWS resources with entitlements for a provided AWS authorization system.

Returns collection of all awsAuthorizationSystemResource entities for a provided AWS authorization system with the list of entitlements that grant an identity access to the resource.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/microsoft.graph.awsAuthorizationSystem/resources?$expand=entitlements
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.awsAuthorizationSystem/resources?$expand=entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.awsAuthorizationSystemResource"
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "externalId": "arn:aws:s3:::00-settings-all-bp-none-acl-owner-encryption-none",
      "displayName": "00-settings-all-bp-none-acl-owner-encryption-none",
      "resourceType": "bucket",
      "service": {
        "id": "s3"
      },
      "entitlements": [
        {
          "@odata.type": "microsoft.graph.awsPolicyEntitlement",
          "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
          "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{identityId}",
          "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
          "awsPolicy@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/policies/{rolePolicyId}",
          "lastUsedDateTime": "1549311775000",
        },
        ...
      ]
      "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/resources/{resourceId}/entitlements?$skiptoken={encodedPageTokenEntitlements}
    },
    ...
  ]
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/resources?$skiptoken={encodedPageTokenResources}&$expand=entitlements
}
```

