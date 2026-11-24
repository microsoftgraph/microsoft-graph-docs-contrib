---
title: "List deleted resourcePolicyDefinition objects"
description: "Get the deleted resourcePolicyDefinition objects retained in the tenant."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List deleted resourcePolicyDefinition objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the deleted [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) objects retained in the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydeletableroot_list_definitions_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydeletableroot-list-definitions-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/deletedItems/definitions
```

## Request headers

|Name|Description|
|:---|:---|
|Accept|`application/json`. Optional. This collection doesn't support `text/plain`; [get an individual deleted definition](../api/resourcepolicydefinition-get.md) to retrieve its Rego text.|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a collection of [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) objects in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicydeletableroot_list_definitions"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/definitions
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyDefinition", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyDefinition",
      "@odata.etag": "\"972dd856-91ff-4539-be09-50ea8235b76e\"",
      "uniqueName": "require_application_name",
      "createdDateTime": "2026-10-22T12:00:00Z",
      "lastModifiedDateTime": "2026-10-22T12:00:00Z",
      "displayName": "Require an application name",
      "description": "Require applications to have a display name",
      "category": "identityAndTenant",
      "version": "1.0.0",
      "deletedDateTime": "2026-10-22T12:30:00Z",
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
  ]
}
```
