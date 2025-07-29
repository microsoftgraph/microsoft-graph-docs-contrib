---
title: "Create contentActivity"
toc.title: "Create contentActivity"
description: "Create a content activity for the signed-in user."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create contentActivity

Namespace: microsoft.graph

Create a [content activity](../resources/contentactivity.md) for the signed-in user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "activitiescontainer-post-contentactivities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/activitiescontainer-post-contentactivities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/dataSecurityAndGovernance/activities/contentActivities
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/dataSecurityAndGovernance/activities/contentActivities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [contentActivity](../resources/contentactivity.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [contentActivity](../resources/contentactivity.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_contentactivity_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/me/dataSecurityAndGovernance/activities/contentActivities
Content-Type: application/json

{
    "contentToProcess": {
       "contentEntries": [
          {
             "@odata.type": "microsoft.graph.processConversationMetadata",
             "identifier": "07785517-9081-4fe7-a9dc-85bcdf5e9075",
             "name":"PC Purview API Explorer message",
             "correlationId": "d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d",
             "sequenceNumber": 0, 
             "isTruncated": false,
             "createdDateTime": "2025-05-27T17:23:20",
             "modifiedDateTime": "2025-05-27T17:23:20"
          }
       ],
       "activityMetadata": { 
          "activity": "uploadText"
       },
       "deviceMetadata": {
          "operatingSystemSpecifications": {
             "operatingSystemPlatform": "Windows 11",
             "operatingSystemVersion": "10.0.26100.0" 
          },
          "ipAddress": "127.0.0.1"
       },
       "protectedAppMetadata": {
          "name": "PC Purview API Explorer",
          "version": "0.2",
          "applicationLocation":{
             "@odata.type": "microsoft.graph.policyLocationApplication",
             "value": "83ef208a-0396-4893-9d4f-d36efbffc8bd"
          }
       },
       "integratedAppMetadata": {
          "name": "PC Purview API Explorer",
          "version": "0.2" 
       }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-contentactivity-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-contentactivity-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-contentactivity-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-contentactivity-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-contentactivity-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentActivity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('7c497f10-cba8-4a8d-9449-db4b76d1ef80')/dataSecurityAndGovernance/activities/contentActivities/$entity",
  "id": "4c3d1219-b1af-442f-85b5-06b7ef1cf8c8",
  "userId": "7c497f10-cba8-4a8d-9449-db4b76d1ef80",
  "scopeIdentifier": null,
  "contentMetadata": {
    "protectedAppMetadata": null,
    "contentEntries": [
      {
        "identifier": "d6ab5054-e111-45c3-9fba-9f2a59c9bbf8",
        "content": null,
        "name": "CA Purview API Explorer message",
        "correlationId": "edfb7f88-b963-4ef2-8b30-5cb90f80e01e",
        "sequenceNumber": 0,
        "length": null,
        "isTruncated": false,
        "createdDateTime": "2025-05-28T20:20:37Z",
        "modifiedDateTime": "2025-05-28T20:20:37Z"
      }
    ],
    "activityMetadata": {
      "activity": "downloadText"
    },
    "deviceMetadata": {
      "deviceType": null,
      "operatingSystemSpecifications": {
        "operatingSystemPlatform": "Windows 11",
        "operatingSystemVersion": "10.0.26100.0"
      }
    },
    "integratedAppMetadata": {
      "name": "CA Purview API Explorer",
      "version": "0.1"
    }
  }
}
```
