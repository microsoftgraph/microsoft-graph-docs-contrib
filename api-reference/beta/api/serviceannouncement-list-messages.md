---
title: "List messages"
description: "Retrieve the serviceUpdateMessage resources from the messages navigation property."
author: "payiAzure"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List messages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [serviceUpdateMessage](../resources/serviceupdatemessage.md) resources from the **messages** navigation property.

This operation retrieves all service update messages that exist for the tenant.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceannouncement_list_messages" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceannouncement-list-messages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/serviceAnnouncement/messages
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer:<br>odata.maxpagesize={x} | Set the maximum page size preference. The maximum page size cannot be greater than 1000. If not specified, the default page size is 100. Optional.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [serviceUpdateMessage](../resources/serviceupdatemessage.md) objects in the response body. The response is paginated and default page size is 100.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_serviceupdatemessage"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceupdatemessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-serviceupdatemessage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-serviceupdatemessage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceupdatemessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceupdatemessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-serviceupdatemessage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-serviceupdatemessage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-serviceupdatemessage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceUpdateMessage",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/serviceAnnouncement/messages",
  "@odata.nextLink": "https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages?$skip=100",
  "value": [
    {
      "startDateTime": "2019-02-01T18:51:00Z",
      "endDateTime": "2019-06-01T08:00:00Z",
      "lastModifiedDateTime": "2021-01-08T01:10:06.843Z",
      "title": "(Updated) New feature: Changes to PowerPoint and Word to open files faster",
      "id": "MC172851",
      "category": "StayInformed",
      "severity": "Normal",
      "tags": [
        "Updated message"
      ],
      "isMajorChange": true,
      "actionRequiredByDateTime": null,
      "services": [
        "SharePoint Online",
        "OneDrive for Business"
      ],
      "expiryDateTime": null,
      "details": [
        {
          "name": "ExternalLink",
          "value": "https://support.office.com/article/office-document-cache-settings-4b497318-ae4f-4a99-be42-b242b2e8b692"
        }
      ],
      "body": {
        "contentType": "Html",
        "content": "Updated January 07, 2021: Based on learnings from our early rings, we have made the decision to make additional changes to the code before we proceed with the rollout. We will update the Message center post once we re-start the rollout......"
      },
      "viewPoint": null
    }
  ]
}
```

