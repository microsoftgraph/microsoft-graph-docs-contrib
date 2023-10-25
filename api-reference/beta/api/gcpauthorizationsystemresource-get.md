---
title: "Get gcpAuthorizationSystemResource"
description: "Read the properties and relationships of a gcpAuthorizationSystemResource object for a provided GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get gcpAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object for a provided GCP authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/resources/{resourceId}
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

If successful, this method returns a `200 OK` response code and a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object in the response body.

### Example 1: Get a GCP resource for a provided GCP authorization system.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_gcpauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/resources/cHJvamVjdHMvY2FyYmlkZS1ib25zYWktMjA1MDE3L3pvbmVzL3VzLWNlbnR
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "cHJvamVjdHMvY2FyYmlkZS1ib25zYWktMjA1MDE3L3pvbmVzL3VzLWNlbnR",
      "externalId": "projects/carbide-bonsai-205017/zones/us-central1-a/instances/instance-1",
      "displayName": "projects/carbide-bonsai-205017/zones/us-central1-a/instances/instance-1",
      "resourceType": "instances",
      "service": {
        "id": "compute"
      }
    }
  ]
}
```

### Example 2: Get entitlements for a specific GCP resource.

Returns collection of all gcpRbacEntitlement objects, which represent the combination of a GCP role that grants an identity access to an authorized system resource, the associated identity, and an optional source identity where the assigned permission was inherited.

#### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_gcpauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources/{resourceId}/entitlements
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources/{resourceId}/entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.gcpRbacEntitlement",
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{identityId}",
      "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
      "gcpRole@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/roles/{rolePolicyId}",
      "lastUsedDateTime": "1549311775000",
    },
    ...
  ],
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources/{resourceId}/entitlements?$skiptoken={encodedPageTokenEntitlements}
}
```

