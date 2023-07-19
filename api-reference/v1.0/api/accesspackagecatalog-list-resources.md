---
title: "List resources"
description: "Retrieve a list of accesspackageresource objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: apiPageType
---

# List resources

Namespace: microsoft.graph

Retrieve a list of [accessPackageResource](../resources/accesspackageresource.md) objects in an [accessPackageCatalog](../resources/accesspackagecatalog.md).  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{id}/resources
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For example, to retrieve the access package resource scopes and environments for each resource, include `$expand=scopes,environment` in the query. To retrieve the available roles of a resource, include `$expand=roles`.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResource](../resources/accesspackageresource.md) objects in the response body.

## Examples

### Request

The following is an example of the request, using `$expand` to return resource scopes of each resource.

<!-- {
  "blockType": "request",
  "name": "get_accesspackageresources"
}-->

```http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{id}/resources?$expand=scopes
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "400279ff-8e85-4dcf-b1d6-d3a6be372951",
      "displayName": "Faculty cafeteria ordering",
      "description": "Example application",
      "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
      "scopes": [
          {
              "id": "452d78a7-69a5-482d-a82f-859a5169c55e",
              "displayName": "Root",
              "description": "Root Scope",
              "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
              "originSystem": "AadApplication",
              "isRootScope": true
          }
      ]
    }
  ]
}
```
