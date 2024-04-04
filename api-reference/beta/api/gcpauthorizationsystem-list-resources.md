---
title: "List resources (for a GCP authorization system)"
description: "List the gcpAuthorizationSystemResource objects and their properties for a provided GCP authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List resources (for a GCP authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects and their properties for a provided GCP authorization system.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "gcpauthorizationsystem_list_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/gcpauthorizationsystem-list-resources-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/resources
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_gcpauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/resources
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-gcpauthorizationsystemresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/resources",
  "value": [
    {
      "id": "cHJvamVjdHMvaGVsbG8td29ybGQtMjMxMTA3L3pvbmVzL3VzLWNlbnRyYWwxLWEvaW5zdGFuY2VzL2luc3RhbmNlLTE",
      "externalId": "projects/hello-world-231107/zones/us-central1-a/instances/instance-1",
      "displayName": "projects/hello-world-231107/zones/us-central1-a/instances/instance-1",
      "resourceType": "instances",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "aGVsbG8td29ybGQtMjMxMTA3LWRhaXN5LWJrdA",
      "externalId": "hello-world-231107-daisy-bkt",
      "displayName": "projects/_/buckets/hello-world-231107-daisy-bkt",
      "resourceType": "buckets",
      "service": {
        "id": "storage"
      }
    }
  ]
}
```

