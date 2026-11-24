---
title: "List previous resourcePolicyDefinitionVersion objects"
description: "Get the previous resourcePolicyDefinitionVersion objects of a policy definition."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List previous resourcePolicyDefinitionVersion objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the previous [resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) objects of an active customer-authored or built-in policy definition.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_list_previousversions_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-list-previousversions-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}/previousVersions
GET /admin/resourcePolicy/builtInDefinitions/{resourcePolicyDefinition-uniqueName}/previousVersions
```

## Request headers

|Name|Description|
|:---|:---|
|Accept|`application/json`. Optional. To retrieve a version's Rego text, [get an individual previous version](../api/resourcepolicydefinitionversion-get.md).|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a collection of [resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) objects in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinition_list_previousversions"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name/previousVersions
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyDefinitionVersion", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyDefinitionVersion",
      "version": "1.0.0",
      "lastModifiedDateTime": "2026-10-22T12:00:00Z",
      "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n",
      "paramsSchema": null
    }
  ]
}
```
