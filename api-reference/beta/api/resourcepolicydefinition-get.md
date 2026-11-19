---
title: "Get resourcePolicyDefinition"
description: "Read the properties of a resourcePolicyDefinition object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Get resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object.

Customer-authored definition responses include the current ETag in the JSON `@odata.etag` annotation or the `ETag` header for plain-text responses. Use this value in the `If-Match` header of an [update](../api/resourcepolicydefinition-update.md) request.

Set `Accept: text/plain` to retrieve the unescaped Rego policy for an individual customer-authored, built-in, or deleted definition.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_get_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-get-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}
GET /admin/resourcePolicy/builtInDefinitions/{resourcePolicyDefinition-uniqueName}
GET /admin/resourcePolicy/deletedItems/definitions/{resourcePolicyDefinition-uniqueName}
```

## Optional query parameters

For the JSON representation of an active definition, use `$expand` to include **assignments** or **previousVersions**. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Accept|`application/json` (default) or `text/plain`. Optional. Use `text/plain` to retrieve only the Rego policy.|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK`. With `Accept: application/json`, or when **Accept** is omitted, the response body is a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object. With `Accept: text/plain`, the response has `Content-Type: text/plain` and contains only the unescaped Rego policy instead of the JSON definition object.

## Examples

### Example 1: Get a definition as JSON

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_get"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Accept: application/json
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyDefinition"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyDefinition",
  "@odata.etag": "\"972dd856-91ff-4539-be09-50ea8235b76c\"",
  "uniqueName": "require_application_name",
  "createdDateTime": "2026-10-22T12:00:00Z",
  "lastModifiedDateTime": "2026-10-22T12:00:00Z",
  "displayName": "Require an application name",
  "description": "Require applications to have a display name",
  "category": "identityAndTenant",
  "version": "1.0.0",
  "deletedDateTime": null,
  "rule": {
    "appliesTo": {
      "operations": "create,updateOrUpsert",
      "resourceName": "microsoft.graph.application",
      "includeDerivedTypes": true
    },
    "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n"
  },
  "paramsSchema": null
}
```

### Example 2: Get a definition as a plain-text policy

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_get_text"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Accept: text/plain
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "string"} -->
```http
HTTP/1.1 200 OK
Content-Type: text/plain
ETag: "972dd856-91ff-4539-be09-50ea8235b76c"

package graph.require_application_name["1.0.0"]

__metadata__ := {
  "title": "Require an application name",
  "description": "Require applications to have a display name",
  "category": "identityAndTenant",
  "selector": {
    "resourceName": "microsoft.graph.application",
    "operations": ["create", "updateOrUpsert"]
  }
}

default deny := {"result": false, "reasons": []}

deny := {"result": true, "reasons": ["A display name is required."]} if {
  object.get(input.resource, "displayName", "") == ""
}
```

### Example 3: Get a built-in definition as a plain-text policy

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_get_builtin_text"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/builtInDefinitions/microsoft_block_implicit_grant_flow_enablement
Accept: text/plain
```

#### Response

The response is shortened to show only the package declaration. The full response contains the built-in policy's Rego text.

<!-- {"blockType": "response", "truncated": true, "@odata.type": "string"} -->
```http
HTTP/1.1 200 OK
Content-Type: text/plain

package graph.microsoft_block_implicit_grant_flow_enablement["1.0.0"]
```

### Example 4: Get a deleted definition as a plain-text policy

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_get_deleted_text"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/definitions/require_application_name
Accept: text/plain
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "string"} -->
```http
HTTP/1.1 200 OK
Content-Type: text/plain
ETag: "972dd856-91ff-4539-be09-50ea8235b76e"

package graph.require_application_name["1.0.0"]

__metadata__ := {
  "title": "Require an application name",
  "description": "Require applications to have a display name",
  "category": "identityAndTenant",
  "selector": {
    "resourceName": "microsoft.graph.application",
    "operations": ["create", "updateOrUpsert"]
  }
}

default deny := {"result": false, "reasons": []}

deny := {"result": true, "reasons": ["A display name is required."]} if {
  object.get(input.resource, "displayName", "") == ""
}
```
