---
title: "Upsert resourcePolicyDefinition"
description: "Create a resourcePolicyDefinition if it doesn't exist, or update it if it exists."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Upsert resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) if it doesn't exist, or update it if it exists.

The unique name in the request URL identifies the object. Supply the fields needed to create the object if it doesn't exist. An existing object is updated with a `204 No Content` response.

This operation accepts JSON or plain-text Rego policies and is intended primarily for declarative deployments, such as Bicep templates.

For policy structure, metadata, parameters, and examples, see [Author policies with Rego](/entra/id-governance/tenant-governance/resource-policy-rego).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_upsert_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-upsert-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`application/json` or `text/plain`. Required.|
|Prefer|`create-if-missing`. Required to create an object when the unique name doesn't exist.|

## Request body

For `Content-Type: application/json`, supply the following properties in the request body.

|Property|Type|Description|
|:---|:---|:---|
|rule|[resourcePolicyRule](../resources/resourcepolicyrule.md)|The Rego policy in **rule.policy**. The service computes **rule.appliesTo** and the definition metadata.|

JSON-escape the Rego policy text and supply it as a string in **rule.policy**.

For `Content-Type: text/plain`, supply the unescaped Rego policy as the entire request body.

For either format, the unique name in the request URL must match the unique name in the Rego package. If the JSON body also specifies **uniqueName**, it must match as well. The package name supplies the version, such as `package graph.require_application_name["1.0.0"]`; applicability comes from `__metadata__.selector`. For details, see [resourcePolicyDefinition](../resources/resourcepolicydefinition.md).

## Response

If the object is created, this method returns `201 Created` and a [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object. If the object is updated, it returns `204 No Content` with no response body.

## Examples

### Example 1: Create an object that doesn't exist

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_upsert"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Content-Type: application/json
Prefer: create-if-missing

{
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

### Example 2: Update an existing object

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_upsert_existing"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Content-Type: application/json
Prefer: create-if-missing

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

### Example 3: Create an object with a plain-text policy

The service derives version `1.0.0` and the definition metadata from the Rego policy.

#### Request

<!-- {"blockType": "ignored", "name": "resourcepolicydefinition_upsert_text"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
Content-Type: text/plain
Prefer: create-if-missing

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
