---
title: "Create contentActivity"
toc.title: "Create contentActivity"
description: "Create a content activity for the signed-in user."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create contentActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a content activity for the signed-in user.

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
POST https://graph.microsoft.com/beta/me/dataSecurityAndGovernance/activities/contentActivities
Content-Type: application/json

{
    "contentMetadata": {
       "contentEntries": [
          {
             "@odata.type": "microsoft.graph.processConversationMetadata",
             "identifier": "68fa951a-898a-4427-8e9e-6f8c05e9fe2b",
             "name":"API Explorer message",
             "correlationId": "559a2343-7aa2-4912-93fe-72c47b2706ed",
             "sequenceNo": 0, 
             "isTruncated": false,
             "createdDateTime": "2025-04-28T20:17:55",
             "modifiedDateTime": "2025-04-28T20:17:55"
          }
       ],
       "activityMetadata": { 
          "activity": "uploadText"
       },
       "deviceMetadata": {
          "deviceType": "unmanaged",
          "operatingSystemSpecifications": {
             "operatingSystemPlatform": "Windows 11",
             "operatingSystemVersion": "10.0.26100.0" 
          }
       },
       "integratedAppMetadata": {
          "name": "API Explorer",
          "version": "0.1" 
       },
       "userId":"7c2f8f10-cba8-4a8d-9449-db4b76d17390",
       "scopeIdentifier":"0"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-contentactivity-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-contentactivity-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-contentactivity-from--go-snippets.md)]
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
  "@odata.type": "#microsoft.graph.contentActivity",
  "id": "420c8b9c-f4d7-4aa8-a392-344b3af9aa83",
  "userId": "7c2f8f10-cba8-4a8d-9449-db4b76d17390",
  "scopeIdentifier": null,
  "contentMetadata": {
    "protectedAppMetadata": null,
    "contentEntries": [
      {
        "identifier": "68fa951a-898a-4427-8e9e-6f8c05e9fe2b",
        "content": null,
        "name": "API Explorer message",
        "correlationId": "559a2343-7aa2-4912-93fe-72c47b2706ed",
        "sequenceNumber": null,
        "length": null,
        "isTruncated": false,
        "createdDateTime": "2025-04-28T20:17:55Z",
        "modifiedDateTime": "2025-04-28T20:17:55Z"
      }
    ],
    "activityMetadata": {
      "activity": "downloadText"
    },
    "deviceMetadata": {
      "deviceType": "unmanaged",
      "operatingSystemSpecifications": {
        "operatingSystemPlatform": "Windows 11",
        "operatingSystemVersion": "10.0.26100.0"
      }
    },
    "integratedAppMetadata": {
      "name": "API Explorer",
      "version": "0.1"
    }
  }
}
```
