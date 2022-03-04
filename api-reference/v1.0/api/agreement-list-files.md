---
title: "List files (localized agreement files)"
description: "Retrieve all localized files related to an agreement."
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "governance"
author: "raprakasMSFT"
---

# List files (localized agreement files)
Namespace: microsoft.graph

Retrieve all localized files related to an agreement.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | Agreement.Read.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /agreements/{agreementsId}?$expand=files
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
<!-- {
  "blockType": "request",
  "name": "list_agreementfilelocalization"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/termsOfUse/agreements/94410bbf-3d3e-4683-8149-f034e55c39dd?$expand=files
```


### Response
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#agreements(files())/$entity",
    "id": "94410bbf-3d3e-4683-8149-f034e55c39dd",
    "displayName": "Contoso ToU for guest users",
    "termsExpiration": null,
    "userReacceptRequiredFrequency": null,
    "isViewingBeforeAcceptanceRequired": true,
    "isPerDeviceAcceptanceRequired": false,
    "files@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/termsOfUse/agreements('94410bbf-3d3e-4683-8149-f034e55c39dd')/files",
    "files": [
        {
            "id": "08033369-8972-42a3-8533-90bbd2757a01",
            "fileName": "TOU.pdf",
            "displayName": "Contoso ToU for guest users",
            "language": "en",
            "isDefault": true,
            "isMajorVersion": false,
            "createdDateTime": "2022-03-04T13:14:13.9361722Z",
            "fileData": null
        },
        {
            "id": "90d1723c-52c1-40e3-a51a-da99a82c0327",
            "fileName": "Contoso ToU for guest users (French)",
            "displayName": "Contoso ToU for guest users (French)",
            "language": "fr-FR",
            "isDefault": false,
            "isMajorVersion": false,
            "createdDateTime": "2022-03-04T14:38:22.8292386Z",
            "fileData": null
        }
    ]
}
```

