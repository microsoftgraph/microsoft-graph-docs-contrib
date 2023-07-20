---
title: "List agreementFileLocalizations"
description: "Get a list of the default and localized agreement files."
author: AlexFilipin
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List agreementFileLocalizations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the default and localized agreement files.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Agreement.Read.All, Agreement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agreements/{agreementsId}/file/localizations
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agreementFileLocalization](../resources/agreementfilelocalization.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_agreementfile_localization"
}
-->
``` http
GET https://graph.microsoft.com/beta/agreements/94410bbf-3d3e-4683-8149-f034e55c39dd/file/localizations
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.agreementFileLocalization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#agreements('94410bbf-3d3e-4683-8149-f034e55c39dd')/file/localizations",
    "value": [
        {
            "id": "90d1723c-52c1-40e3-a51a-da99a82c0327",
            "fileName": "Contoso ToU for guest users (French)",
            "displayName": "Contoso ToU for guest users (French)",
            "language": "fr-FR",
            "isDefault": false,
            "isMajorVersion": false,
            "createdDateTime": "2022-03-04T14:38:22.8292386Z",
            "fileData": null
        },
        {
            "id": "08033369-8972-42a3-8533-90bbd2757a01",
            "fileName": "TOU.pdf",
            "displayName": "Contoso ToU for guest users",
            "language": "en",
            "isDefault": true,
            "isMajorVersion": false,
            "createdDateTime": "2022-03-04T13:14:13.9361722Z",
            "fileData": null
        }
    ]
}
```

