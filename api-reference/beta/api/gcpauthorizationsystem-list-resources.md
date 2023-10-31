---
title: "List gcpAuthorizationSystemResources"
description: "List the gcpAuthorizationSystemResource objects and their properties for a provided GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List gcpAuthorizationSystemResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects and their properties for a provided GCP authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/resources
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

If successful, this method returns a `200 OK` response code and a collection of [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects in the response body.

## Examples

### Example 1: List the GCP resources for a provided GCP authorization system.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_gcpauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/resources
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpAuthorizationSystemResource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "cHJvamVjdHMvY2FyYmlkZS1ib25zYWktMjA1MDE3L3pvbmVzL3VzLWNlbnRyYWwxLWEvaW5zdGFuY2VzL2luc3RhbmNlLTE=",
      "externalId": "projects/carbide-bonsai-205017/zones/us-central1-a/instances/instance-1",
      "displayName": "projects/carbide-bonsai-205017/zones/us-central1-a/instances/instance-1",
      "resourceType": "instances",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "Y2FyYmlkZS1ib25zYWktMjA1MDE3LWRhaXN5LWJrdA==",
      "externalId": "carbide-bonsai-205017-daisy-bkt",
      "displayName": "projects/_/buckets/carbide-bonsai-205017-daisy-bkt",
      "resourceType": "buckets",
      "service": {
        "id": "storage"
      }
    }
  ]
}
```

### Example 2: List all GCP resources with entitlements for a provided GCP authorization system.

Returns collection of all gcpAuthorizationSystemResource entities for a provided GCP authorization system with the list of entitlements that grant an identity access to the resource.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_gcpauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources?$expand=entitlements
```


#### Response
The following example shows the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources?$expand=entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource"
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "externalId": "57f24f03-f665-4765-98e1-a701c62b5156",
      "displayName": "57f24f03-f665-4765-98e1-a701c62b5156",
      "resourceType": "clusters",
      "service": {
        "id": "dataproc"
      },
      "entitlements": [
        {
          "@odata.type": "microsoft.graph.gcpRbacEntitlement",
          "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
          "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{identityId}",
          "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
          "gcpRole@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/roles/{rolePolicyId}",
          "lastUsedDateTime": "1549311775000",
        },
        ...
      ]
      "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources/{resourceId}/entitlements?$skiptoken={encodedPageTokenEntitlements}
    },
    ...
  ]
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.gcpAuthorizationSystem/resources?$skiptoken={encodedPageTokenResources}&$expand=entitlements
}
```

