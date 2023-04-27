---
title: "List attachments"
description: "Get the list of attachments associated with a service message."
author: "payiAzure"
ms.localizationpriority: medium
ms.prod: "service-communications"
doc_type: apiPageType
---

# List attachments
Namespace: microsoft.graph

Get the list of attachments associated with a service message.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ServiceMessage.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ServiceMessage.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/serviceAnnouncement/messages/{serviceUpdateMessageId}/attachments
```

## Optional query parameters
This method supports the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) objects in the response body.

## Examples

### Example 1: Get all attachments of a message in a collection

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_serviceannouncementattachment_getallattachments",
  "sampleKeys" : ["MC54091"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/serviceAnnouncement/messages/MC54091/attachments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceannouncementattachment-getallattachments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-serviceannouncementattachment-getallattachments-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceannouncementattachment-getallattachments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceannouncementattachment-getallattachments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-serviceannouncementattachment-getallattachments-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-serviceannouncementattachment-getallattachments-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.serviceAnnouncementAttachment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context": "https://graph.microsoft-ppe.com/v1.0/$metadata#admin/serviceAnnouncement/messages('MC54091')/attachments",
    "value": [
        {
            "contentType": "application/csv",
            "isInline": false,
            "lastModifiedDateTime": "2021-09-21T04:07:15.9720778Z",
            "name": "An attachment for a Data Privacy message regarding your organization is available within Message Center. The contents of this attachment can be accessed within Message Center by a Global Administrator or someone designated as a Message Center Privacy Reader. Please sign in to Admin Center to view the details of this message in the Microsoft 365 Message center.",
            "size": 44583,
            "id": "30356a46-ffad-47e1-acf6-40a99b1538c1"
        },
        {
            "contentType": "application/csv",
            "isInline": false,
            "lastModifiedDateTime": "2021-09-21T04:07:15.9720778Z",
            "name": "An attachment for a Data Privacy message regarding your organization is available within Message Center. The contents of this attachment can be accessed within Message Center by a Global Administrator or someone designated as a Message Center Privacy Reader. Please sign in to Admin Center to view the details of this message in the Microsoft 365 Message center.",
            "size": 288849,
            "id": "fdd33417-37b9-49cc-95c1-7af90f2366c8"
        }
    ]
}
```

### Example 2: Get a zip file of all attachments in stream for a message

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_serviceannouncementattachment_inzip",
  "sampleKeys" : ["MC54091"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/serviceAnnouncement/messages/MC54091/attachmentsArchive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceannouncementattachment-inzip-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-serviceannouncementattachment-inzip-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceannouncementattachment-inzip-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceannouncementattachment-inzip-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-serviceannouncementattachment-inzip-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-serviceannouncementattachment-inzip-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context": "https://graph.microsoft-ppe.com/v1.0/$metadata#admin/serviceAnnouncement/messages('MC54091')/attachmentsArchive",
    "value": "Stream"
}
```
