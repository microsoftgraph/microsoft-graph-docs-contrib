---
title: "List deletedItems (deleted lifecycle workflows)"
description: "Get a list of the deleted workflows objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List deletedItems (deleted lifecycle workflows)

Namespace: microsoft.graph

Get a list of the deleted workflow objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_list_deleteditems" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-list-deleteditems-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/
```

## Optional query parameters

This method supports the `$select`, `$search`, `$orderby`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) objects in the response body.

## Examples

### Example 1: Retrieve all deleted workflows

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_deleteditemcontainer"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/workflows
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-deleteditemcontainer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-list-deleteditemcontainer-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-deleteditemcontainer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-deleteditemcontainer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-deleteditemcontainer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-deleteditemcontainer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-deleteditemcontainer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-list-deleteditemcontainer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.deletedItemContainer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/deletedItems/workflows",
    "value": [
        {
            "category": "joiner",
            "description": "Configure new hire tasks for onboarding employees on their first day",
            "displayName": "US Onboard new hire employee",
            "lastModifiedDateTime": "2022-08-24T18:25:09.4212828Z",
            "createdDateTime": "2022-08-24T18:24:14.4067873Z",
            "deletedDateTime": "2022-08-24T18:25:09.5729865Z",
            "id": "f1937e0c-c509-4250-ab51-d5e6e35fcbda",
            "version": 1
        },
        {
            "category": "joiner",
            "description": "Configure new hire tasks for onboarding employees on their first day",
            "displayName": "EU Onboard new hire employee",
            "lastModifiedDateTime": "2022-08-24T18:25:09.4050443Z",
            "createdDateTime": "2022-08-24T18:24:40.0689833Z",
            "deletedDateTime": "2022-08-24T18:25:09.5542954Z",
            "id": "21d2c0fb-dcaa-4abb-88db-891d76c84e9a",
            "version": 1
        }
    ]
}
```

### Example 2: Retrieve deleted workflows for "leaver" scenarios and return only specific properties

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_deleteditemcontainer_select"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/workflows?$select=id,category,displayName,description,version&$filter=category eq 'leaver'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-deleteditemcontainer-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-list-deleteditemcontainer-select-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-deleteditemcontainer-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-deleteditemcontainer-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-deleteditemcontainer-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-deleteditemcontainer-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-deleteditemcontainer-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-list-deleteditemcontainer-select-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.deletedItemContainer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/deletedItems/workflows(category,displayName,description,version)",
    "value": [
        {
            "category": "leaver",
            "description": "Employee offboarding for Contoso Germany.",
            "displayName": "Germany offboard employees",
            "id": "952b23c5-cc25-48c9-8848-95da4dd9dc6d",
            "version": 4
        }
    ]
}
```
