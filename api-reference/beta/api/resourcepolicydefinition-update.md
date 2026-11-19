---
title: "Update resourcePolicyDefinition"
description: "Update a resourcePolicyDefinition object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Update resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object.

The service extracts metadata from the updated Rego policy. Updating a definition creates a new current version and moves its previous current version into **previousVersions**. The new semantic version must be greater than the current version. For example, updating version `1.0.0` to `1.1.0` makes version `1.0.0` available at `/admin/resourcePolicy/definitions/{uniqueName}/previousVersions/1.0.0`. Existing assignments remain pinned to their referenced version. This method updates customer-authored definitions; built-in definitions are read-only.

Retrieve the current definition and supply its ETag in the `If-Match` header. A stale ETag causes `412 Precondition Failed`; retrieve the latest definition before retrying the update.

For policy structure, metadata, parameters, and examples, see [Author policies with Rego](/entra/id-governance/tenant-governance/resource-policy-rego).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_update_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-update-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}
```

## Request headers

| Name          | Description                                                                                                                     |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).                       |
| Content-Type  | `application/json` or `text/plain`. Required.                                                                                   |
| If-Match      | Required. The current definition's ETag, returned in `@odata.etag` for JSON or the `ETag` header for a plain-text GET response. |

## Request body

For `Content-Type: application/json`, supply the following properties. JSON-escape the Rego policy text and supply it as a string in **rule.policy**.

|Property|Type|Description|
|:---|:---|:---|
|rule|[resourcePolicyRule](../resources/resourcepolicyrule.md)|The Rego policy in **rule.policy**. The service computes **rule.appliesTo** and the definition metadata.|

For `Content-Type: text/plain`, supply the unescaped Rego policy as the entire body.

For either format, the unique name in the request URL must match the unique name in the Rego package. If the JSON body also specifies **uniqueName**, it must match as well. The package name supplies the new version, such as `package graph.require_application_name["1.1.0"]`; applicability comes from `__metadata__.selector`. For details, see [resourcePolicyDefinition](../resources/resourcepolicydefinition.md).

## Response

If successful, this method returns `204 No Content` with no response body.

## Examples

### Example 1: Update a definition with JSON

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_update"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Content-Type: application/json
If-Match: "972dd856-91ff-4539-be09-50ea8235b76c"

{
  "rule": {
    "policy": "package graph.require_application_name[\"1.1.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n"
  }
}
```

#### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update a definition with a plain-text policy

The package name identifies the same definition as the request URL and supplies version `1.1.0`.

#### Request

<!-- {"blockType": "ignored", "name": "resourcepolicydefinition_update_text"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Content-Type: text/plain
If-Match: "972dd856-91ff-4539-be09-50ea8235b76c"

package graph.require_application_name["1.1.0"]

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

#### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
