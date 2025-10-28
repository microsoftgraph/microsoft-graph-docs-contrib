---
title: "List dependentResources"
description: "List the dependent education assignment resources for a given education assignment resource."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 10/2/2025
---

# List dependentResources

Namespace: microsoft.graph

List the dependent [education assignment resources](../resources/educationassignmentresource.md) for a given [education assignment resource](../resources/educationassignmentresource.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignmentresource_list_dependentresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentresource-list-dependentresources-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/assignments/{assignment-id}/resources/{resource-id}/dependentResources
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationAssignmentResource](../resources/educationassignmentresource.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_dependentassignmentresources",
  "sampleKeys": ["de45722a-c202-43a9-9dd5-d82c45bcef91","4d1ecd2d-c913-41ba-be3c-d896b65d09f0","ae7beedb-488d-4534-9307-3fbc2fac29b4"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/resources/ae7beedb-488d-4534-9307-3fbc2fac29b4/dependentResources 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-dependentassignmentresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-dependentassignmentresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-dependentassignmentresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-dependentassignmentresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-dependentassignmentresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-dependentassignmentresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationAssignmentResource)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('de45722a-c202-43a9-9dd5-d82c45bcef91')/assignments('4d1ecd2d-c913-41ba-be3c-d896b65d09f0')/resources('ae7beedb-488d-4534-9307-3fbc2fac29b4')/dependentResources",
  "value": [
    {
      "distributeForStudentWork": true,
      "id": "090d693a-60a1-454e-8bfb-464cea5e796d",
      "resource": {
        "@odata.type": "#microsoft.graph.educationExternalResource",
        "displayName": "A Baby Polar Bear Grows Up (US History)",
        "createdDateTime": "2025-09-23T23:28:58.0188865Z",
        "lastModifiedDateTime": "2025-09-23T23:28:58.0188956Z",
        "webUrl": "https://forms.office.com/Pages/AssignmentsDesignPage.aspx#TopView=Preview&FormId=kowztj5TbU-jJ5lCY3EjmSpyRd4CwqlDndXYLEW875FUQ1lPUUE2NEk0TEMzVlVNRjhGQlgwRTRPSCQlQCN0PWcu",
        "createdBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "7313562f-6ac1-43c0-803e-f345a1792f7b",
            "displayName": null
          }
        },
        "lastModifiedBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "7313562f-6ac1-43c0-803e-f345a1792f7b",
            "displayName": null
          }
        }
      }
    }
  ]
}
```
