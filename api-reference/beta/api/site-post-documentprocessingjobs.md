---
title: "Create documentProcessingJob"
description: "Create a new document processing job object."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 08/06/2024
---

# Create documentProcessingJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [documentProcessingJob](../resources/documentprocessingjob.md) object. The document processing job queues a document, or all documents in a folder, for processing by the applied content models.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "site_post_documentprocessingjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/site-post-documentprocessingjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /sites/{sitesId}/documentProcessingJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [documentProcessingJob](../resources/documentprocessingjob.md) object.

You can specify the following properties when you create a **documentProcessingJob**.

|Property|Type|Description|
|:---|:---|:---|
|jobType|documentProcessingJobType|The document processing job type. The possible values are: `File`, `Folder`. Optional.|
|status|documentProcessingJobStatus|The document processing job status. The possible values are: `inProgress`, `completed`, `failed`, `notStarted`. Typically when a job is created, its initial status is `notStarted`. Optional.|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only. Optional.|
|listItemUniqueId|String|The unique ID of the file or folder to process. To get the unique ID, use the [GET driveItem](../resources/driveitem.md) method and read the [sharepointIds](../resources/sharepointids.md) property.|



## Response

If successful, this method returns a `201 Created` response code and a [documentProcessingJob](../resources/documentprocessingjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_documentprocessingjob_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/documentProcessingJobs
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.documentProcessingJob",
  "jobType": "File",
  "listItemUniqueId": "5955b119-99c1-4af9-97ed-3449e02de6f1",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-documentprocessingjob-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-documentprocessingjob-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-documentprocessingjob-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-documentprocessingjob-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-documentprocessingjob-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-documentprocessingjob-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.documentProcessingJob"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "11f99394-e5eb-45e9-b478-7c83eaeda224",
  "jobType": "File",
  "status": "notStarted",
  "createdDateTime": "2023-06-23T22:03:47",
  "listItemUniqueId": "5955b119-99c1-4af9-97ed-3449e02de6f1",
}
```

