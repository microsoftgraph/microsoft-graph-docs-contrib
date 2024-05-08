---
title: "Create documentProcessingJob"
description: "Create a new documentProcessingJob object."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# Create documentProcessingJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new documentProcessingJob object. The job is to queue a document, or all documents in a folder to process by the applied content models.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "site-post-documentprocessingjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/site-post-documentprocessingjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /sites/{sitesId}/documentProcessingJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [documentProcessingJob](../resources/documentprocessingjob.md) object.

You can specify the following properties when creating a **documentProcessingJob**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|jobType|documentProcessingJobType|Document processing Job type. The possible values are: `File`, `Folder`. Optional.|
|status|documentProcessingJobStatus|Document processing Job status. The possible values are: `inProgress`, `completed`, `failed`, `notStarted`. Typically when a job is created, its initial status is `notStarted`. Optional.|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only. Optional.|
|listItemUniqueId|String|The listItemUniqueId of the file, or folder to process. It is one of the sharepointIds. It can be retrieved by Drive item Graph API. Check out sharepointIds for more details. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [documentProcessingJob](../resources/documentprocessingjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_documentprocessingjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{sitesId}/documentProcessingJobs
Content-Type: application/json

{
  "@odata.type": "#oneDrive.documentProcessingJob",
  "jobType": "File",
  "listItemUniqueId": "5955b119-99c1-4af9-97ed-3449e02de6f1",
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.documentProcessingJob"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "11f99394-e5eb-45e9-b478-7c83eaeda224",
  "jobType": "file",
  "status": "NoStarted",
  "createdDateTime": "2023-06-23T22:03:47",
  "listItemUniqueId": "5955b119-99c1-4af9-97ed-3449e02de6f1",
}
```

