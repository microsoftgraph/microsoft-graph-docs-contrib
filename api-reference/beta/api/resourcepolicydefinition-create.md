---
title: "Create resourcePolicyDefinition"
description: "Create a new resourcePolicyDefinition object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Create resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object.

Supply a customer-authored Rego policy as JSON or plain text. For JSON requests, supply **uniqueName** and the JSON-escaped Rego text in **rule.policy**. For plain-text create requests, supply the Rego policy as the entire body; the service derives **uniqueName** from the package name. The service extracts the definition's unique name and semantic version from the Rego package name, and its descriptive metadata, parameter schema, and applicability information from `__metadata__`. Microsoft-authored built-in definitions are read-only.

Creating a definition doesn't activate it. To apply the policy, create a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) that references a specific definition version and specifies parameter values, enabled status, and enforcement mode.

For policy structure, metadata, parameters, and examples, see [Author policies with Rego](/entra/id-governance/tenant-governance/resource-policy-rego).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_create_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-create-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /admin/resourcePolicy/definitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`application/json` or `text/plain`. Required.|

## Request body

For `Content-Type: application/json`, supply the following properties. JSON-escape the Rego policy text and supply it as a string in **rule.policy**.

|Property|Type|Description|
|:---|:---|:---|
|rule|[resourcePolicyRule](../resources/resourcepolicyrule.md)|Required. The Rego policy in **rule.policy**. The service computes **rule.appliesTo** and the definition metadata.|
|uniqueName|String|Required. The immutable unique name, which must match the unique name in the Rego package. Must start with an ASCII letter, contain only ASCII letters, digits, or underscores, and have at most 128 characters. The prefixes `microsoft` and `ms` (including `msft`) and the exact names `utils` and `input` are reserved, regardless of case. Hyphens and non-ASCII characters aren't allowed.|

For `Content-Type: text/plain`, supply the unescaped Rego policy as the entire body. The service derives **uniqueName** from the Rego package name.

Both formats use the package format `graph.<uniqueName>["<semantic-version>"]`, such as `package graph.require_application_name["1.0.0"]`. The version comes from the package name, and applicability comes from `__metadata__.selector`. For details, see [resourcePolicyDefinition](../resources/resourcepolicydefinition.md).

## Response

If successful, this method returns `201 Created` and a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object in the response body.

The response is JSON for either request-body format.

## Examples

### Example 1: Create a definition with JSON

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_create"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/definitions
Content-Type: application/json

{
  "uniqueName": "require_application_name",
  "rule": {
    "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n"
  }
}
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyDefinition"} -->
```http
HTTP/1.1 201 Created
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

### Example 2: Create a definition with a plain-text policy

The service derives `require_application_name` and version `1.0.0` from the package name.

#### Request

<!-- {"blockType": "ignored", "name": "resourcepolicydefinition_create_text"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/definitions
Content-Type: text/plain

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

#### Response

The response is shortened for readability.

<!-- {"blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.resourcePolicyDefinition"} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyDefinition",
  "@odata.etag": "\"972dd856-91ff-4539-be09-50ea8235b76c\"",
  "uniqueName": "require_application_name",
  "displayName": "Require an application name",
  "version": "1.0.0"
}
```
