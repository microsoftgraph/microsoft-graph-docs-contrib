---
title: "Get awsAuthorizationSystemResource"
description: "Read the properties and relationships of an awsAuthorizationSystemResource object for a provided AWS authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get awsAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object  for a provided AWS authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/resources/{resourceId}
```

## Optional query parameters
This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object in the response body.

## Examples

### Example 1: Get an AWS resource for a provided AWS authorization system.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.awsAuthorizationSystem/resources/YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU
```


#### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU",
      "externalId": "arn:aws:s3:::00-settings-all-bp-none-acl-owner-encryption-none",
      "displayName": "00-settings-all-bp-none-acl-owner-encryption-none",
      "resourceType": "bucket",
      "service": {
        "id": "s3"
      }
    }
  ]
}
```

### Example 2: Get entitlements for a specific AWS resource.

Returns collection of all AWS policy entitlements, which represent the combination of an AWS policy that grants an identity access to an authorized system resource, the associated identity, and an optional source identity where the assigned permission was inherited.

#### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/microsoft.graph.awsAuthorizationSystem/resources/{resourceId}/entitlements
```


#### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.awsAuthorizationSystem/resources/{resourceId}/entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.awsPolicyEntitlement",
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{identityId}",
      "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
      "awsPolicy@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/policies/{rolePolicyId}",
      "lastUsedDateTime": "1549311775000"
    },
    ...
  ],
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.awsAuthorizationSystem/resources/{resourceId}/entitlements?$skiptoken={encodedPageTokenEntitlements}
}
```

