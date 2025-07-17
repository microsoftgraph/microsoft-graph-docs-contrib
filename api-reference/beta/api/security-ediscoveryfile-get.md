---
title: "Get ediscoveryFile"
description: "Read the properties and relationships of an ediscoveryFile object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# Get ediscoveryFile
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryfile_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryfile-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/files/{ediscoveryFileId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ediscoveryfile",
  "sampleKeys": ["58399dff-cebe-478f-b1af-d3227f1fd645", "273f11a1-17aa-419c-981d-ff10d33e420f", "000168cdf05c48d98faac7bff8719726a25da40bb2b9c369fb580b8797abf661"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/files/000168cdf05c48d98faac7bff8719726a25da40bb2b9c369fb580b8797abf661
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-ediscoveryfile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-ediscoveryfile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-ediscoveryfile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-ediscoveryfile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-ediscoveryfile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-ediscoveryfile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-ediscoveryfile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-ediscoveryfile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryFile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('58399dff-cebe-478f-b1af-d3227f1fd645')/reviewSets('273f11a1-17aa-419c-981d-ff10d33e420f')/files/$entity",
    "id": "000168cdf05c48d98faac7bff8719726a25da40bb2b9c369fb580b8797abf661",
    "dateTime": "2017-11-02T15:07:10Z",
    "size": 921,
    "name": "Report/CustomVisuals/WordCloud1447959067750/package.json",
    "sourceType": "site",
    "subjectTitle": "Operations Analytics.pbix",
    "extension": "json",
    "mediaType": "application/json; charset=ISO-8859-1",
    "processingStatus": "success",
    "otherProperties": {
        "Source": null,
        "Participants": null,
        "To": null,
        "Cc": null,
        "Bcc": null,
        "Recipients": null,
        "Author": null,
        "CreatedTime": null,
        "Received": null,
        "Sent": null,
        "LastModifiedDate": "2017-11-02T15:07:10Z",
        "MessageType": null,
        "Title": null,
        "EmailHasAttachment": false,
        "EmailImportance": "",
        "WordCount": 25,
        "ErrorIgnored": false,
        "IsFromErrorRemediation": false,
        "EmailSecurity": 0,
        "EmailSensitivity": 0,
        "IsModernAttachment": false,
        "IsEmbeddedDocument": true,
        "ComplianceLabels": null,
        "ConversationId": null,
        "ConversationIndex": null,
        "ItemClass": null,
        "LocationName": null,
        "MeetingStartDate": null,
        "MeetingEndDate": null,
        "ParticipantDomains": null,
        "RecipientDomains": null,
        "Sender": null,
        "SenderDomain": null
    }
}
```

