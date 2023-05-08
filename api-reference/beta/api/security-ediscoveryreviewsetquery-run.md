---
title: "ediscoveryReviewSetQuery: run"
description: "Run reviewset query to get the list of files."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoveryReviewSetQuery: run
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Run reviewset query to get the list of files.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/queries/{queryId}/run
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetquerythis.run"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/queries/837335b0-1943-444d-a3d1-5522cc21c5a4/run
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetquerythisrun-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetquerythisrun-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryFile)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(ediscoveryFile)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/queries/837335b0-1943-444d-a3d1-5522cc21c5a4/run?$top=2&$skiptoken=1",
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryFile",
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
        },
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryFile",
            "id": "005248e12e3f4859c8b20f385f7e962f41eeea144cf27baefd339bd5fa8ed39a",
            "dateTime": "2017-10-04T22:42:49Z",
            "size": 19811608,
            "name": "Introducing the Contoso Mark 8 3D.pptx",
            "sourceType": "site",
            "subjectTitle": "PowerPoint Presentation",
            "extension": "pptx",
            "mediaType": "application/vnd.openxmlformats-officedocument.presentationml.presentation",
            "processingStatus": "success",
            "otherProperties": {
                "Source": null,
                "Participants": null,
                "To": null,
                "Cc": null,
                "Bcc": null,
                "Recipients": null,
                "Author@odata.type": "#Collection(String)",
                "Author": [
                    "meganb@m365x809305.onmicrosoft.com"
                ],
                "CreatedTime": "2021-09-14T12:00:53Z",
                "Received": null,
                "Sent": null,
                "LastModifiedDate": "2017-10-04T22:42:49Z",
                "MessageType": null,
                "Title": "PowerPoint Presentation",
                "EmailHasAttachment": false,
                "EmailImportance": "",
                "WordCount": 293,
                "ErrorIgnored": false,
                "IsFromErrorRemediation": false,
                "EmailSecurity": 0,
                "EmailSensitivity": 0,
                "IsModernAttachment": false,
                "IsEmbeddedDocument": false,
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
    ]
}
```

