---
title: "Get serviceAnnouncementAttachment"
description: "Read the properties and relationships of a serviceAnnouncementAttachment object."
author: "payiAzure"
ms.localizationpriority: medium
ms.prod: "service-communications"
doc_type: apiPageType
---

# Get serviceAnnouncementAttachment
Namespace: microsoft.graph

Read the properties and relationships of a [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) object.

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
GET /admin/serviceAnnouncement/messages/{serviceUpdateMessageId}/attachments/{serviceAnnouncementAttachmentId}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) object in the response body.

## Examples

### Example 1: Get an attachment message ID

The following request returns an [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) resource.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_serviceannouncementattachment_messageID",
  "sampleKeys" : ["MC54091", "30356a46-ffad-47e1-acf6-40a99b1538c1"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/serviceAnnouncement/messages/MC54091/attachments/30356a46-ffad-47e1-acf6-40a99b1538c1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-serviceannouncementattachment-messageid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-serviceannouncementattachment-messageid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-serviceannouncementattachment-messageid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-serviceannouncementattachment-messageid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-serviceannouncementattachment-messageid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-serviceannouncementattachment-messageid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceAnnouncementAttachment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft-ppe.com/v1.0/$metadata#admin/serviceAnnouncement/messages('MC54091')/attachments/$entity",
    "contentType": "application/csv",
    "isInline": false,
    "lastModifiedDateTime": "2021-09-21T04:07:15.9720778Z",
    "name": "An attachment for a Data Privacy message regarding your organization is available within Message Center. The contents of this attachment can be accessed within Message Center by a Global Administrator or someone designated as a Message Center Privacy Reader. Please sign in to Admin Center to view the details of this message in the Microsoft 365 Message center.",
    "size": 44583,
    "id": "30356a46-ffad-47e1-acf6-40a99b1538c1"
  }
}
```

### Example 2: Return a file stream of an attachment content for a message

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_serviceannouncementattachment_as_fileStream",
  "sampleKeys" : ["MC54091", "30356a46-ffad-47e1-acf6-40a99b1538c1"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/serviceAnnouncement/messages/MC54091/attachments/30356a46-ffad-47e1-acf6-40a99b1538c1/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-serviceannouncementattachment-as-filestream-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-serviceannouncementattachment-as-filestream-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-serviceannouncementattachment-as-filestream-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-serviceannouncementattachment-as-filestream-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-serviceannouncementattachment-as-filestream-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-serviceannouncementattachment-as-filestream-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceAnnouncementAttachment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": "An attachment for a Data Privacy message regarding your organization is available within Message Center. The contents of this attachment can be accessed within Message Center by a Global Administrator or someone designated as a Message Center Privacy Reader. Please sign in to Admin Center to view the details of this message in the Microsoft 365 Message center."
}
```
