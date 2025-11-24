---
title: "List dependentResources"
description: "List the dependent education submission resources for a given education submission resource."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 09/23/2025
---

# List dependentResources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the dependent [education submission resources](../resources/educationsubmissionresource.md) for a given [education submission resource](../resources/educationsubmissionresource.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationsubmissionresource_list_dependentresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationsubmissionresource-list-dependentresources-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/assignments/{assignment-id}/submissions/{submission-id}/resources/{resource-id}/dependentResources
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationSubmissionResource](../resources/educationsubmissionresource.md) objects in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_dependentsubmissionresources"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/submissions/fd921642-a333-4c4d-9335-2200f36400a9/resources/d927f453-3297-487a-8929-fa1c68f18bf3/dependentResources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-dependentsubmissionresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-dependentsubmissionresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-dependentsubmissionresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-dependentsubmissionresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-dependentsubmissionresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-dependentsubmissionresources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-dependentsubmissionresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmissionResource)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('de45722a-c202-43a9-9dd5-d82c45bcef91')/assignments('4d1ecd2d-c913-41ba-be3c-d896b65d09f0')/submissions('fd921642-a333-4c4d-9335-2200f36400a9')/resources('d927f453-3297-487a-8929-fa1c68f18bf3')/dependentResources",
  "value": [
    {
      "assignmentResourceUrl": "https://assignments.edu.cloud.microsoft/api/v1.0/edu/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/resources/090d693a-60a1-454e-8bfb-464cea5e796d",
      "id": "d92ad210-15ce-40ba-a216-11c7baffada8",
      "resource": {
        "@odata.type": "#microsoft.graph.educationExternalResource",
        "displayName": "A Baby Polar Bear Grows Up (US History)",
        "createdDateTime": "2025-09-23T23:29:29.7443913Z",
        "lastModifiedDateTime": "2025-09-23T23:29:29.9648707Z",
        "webUrl": "https://forms.office.com/Pages/AssignmentsDesignPage.aspx#TopView=Preview&FormId=kowztj5TbU-jJ5lCY3EjmSpyRd4CwqlDndXYLEW875FUQ1lPUUE2NEk0TEMzVlVNRjhGQlgwRTRPSCQlQCN0PWcu",
        "createdBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
            "displayName": null
          }
        },
        "lastModifiedBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "ccb65bcd-04ba-421a-8791-a299a70904b6",
            "displayName": null
          }
        }
      }
    },
    {
      "assignmentResourceUrl": null,
      "id": "7b7153b4-44d8-40f9-b3de-ad2c3e04902d",
      "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "v_618c7257-c489-4dd3-9f97-58984184a733.webm",
        "createdDateTime": "2025-09-23T23:37:31.5828888Z",
        "lastModifiedDateTime": "2025-09-23T23:37:31.5828966Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!OttVdlohTEOX2TQZemXSranQ4OQ3V_BOoMB0C081JqWpyrOjFml8Qpy1XCbr5JBo/items/01QUVMP7NZMWMPDRSXF5C2DT4SLFS2RCUZ",
        "createdBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "c0eae257-f843-4af3-a307-c698f6ac8f23",
            "displayName": null
          }
        },
        "lastModifiedBy": {
          "application": null,
          "device": null,
          "user": {
            "id": "c0eae257-f843-4af3-a307-c698f6ac8f23",
            "displayName": null
          }
        }
      }
    }
  ]
}
```
