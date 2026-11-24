---
title: "Get resourcePolicyDefinitionVersion"
description: "Read a previous resourcePolicyDefinitionVersion of a policy definition."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Get resourcePolicyDefinitionVersion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read a previous [resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) of an active customer-authored or built-in policy definition.

Set `Accept: text/plain` to retrieve the unescaped Rego policy for an individual previous version.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinitionversion_get_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinitionversion-get-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}/previousVersions/{resourcePolicyDefinitionVersion-version}
GET /admin/resourcePolicy/builtInDefinitions/{resourcePolicyDefinition-uniqueName}/previousVersions/{resourcePolicyDefinitionVersion-version}
```

## Request headers

|Name|Description|
|:---|:---|
|Accept|`application/json` (default) or `text/plain`. Optional. Use `text/plain` to retrieve the unescaped Rego policy.|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK`. With `Accept: application/json`, or when **Accept** is omitted, the response body is a [resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) object. With `Accept: text/plain`, the response has `Content-Type: text/plain` and contains only the unescaped Rego policy for the requested version, without a JSON wrapper.

## Examples

### Example 1: Get a previous version as JSON

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinitionversion_get"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name/previousVersions/1.0.0
Accept: application/json
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyDefinitionVersion"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyDefinitionVersion",
  "version": "1.0.0",
  "lastModifiedDateTime": "2026-10-22T12:00:00Z",
  "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n",
  "paramsSchema": null
}
```

### Example 2: Get a previous version as a plain-text policy

#### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinitionversion_get_text"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name/previousVersions/1.0.0
Accept: text/plain
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "string"} -->
```http
HTTP/1.1 200 OK
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
