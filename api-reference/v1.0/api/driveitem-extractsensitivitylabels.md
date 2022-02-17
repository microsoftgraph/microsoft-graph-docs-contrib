---
title: "Extract sensitivity labels"
description: "Extract sensitivityLabel(s) assigned to a drive item"
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Extract sensitivity labels
Namespace: microsoft.graph

Extract sensitivityLabel(s) assigned to a drive item and update drive item's metadata with the latest assigned label details. In case of failure to extract file's sensitivityLabel(s), extraction error would be thrown with proper error code and message.

> **Note**: This API is applicable only for supported file extensions. When this API is called, first the file's sensitivityLabel(s) metadata are retrieved from the database and checked whether these are latest w.r.t the file's content. If yes, the retrieved values from database are returned. If not, then sensitivityLabel(s) are extracted from the file's content stream, corresponding metadata in database are updated and the newly extracted values are returned.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                                                             |
|:--------------------------------------|:--------------------------------------------------------------------------------------------------------|
|Delegated (work or school account)     | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All   |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All                                        |
|Application                            | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All                                |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/extractSensitivityLabels
POST /drives/{drive-id}/root:/{item-path}/extractSensitivityLabels
POST /groups/{group-id}/drive/items/{item-id}/extractSensitivityLabels
POST /groups/{group-id}/drive/root:/{item-path}/extractSensitivityLabels
POST /me/drive/items/{item-id}/extractSensitivityLabels
POST /me/drive/root:/{item-path}/extractSensitivityLabels
POST /sites/{site-id}/drive/items/{item-id}/extractSensitivityLabels
POST /sites/{site-id}/drive/root:/{item-path}/extractSensitivityLabels
POST /users/{user-id}/drive/items/{item-id}/extractSensitivityLabels
POST /users/{user-id}/drive/root:/{item-path}/extractSensitivityLabels
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [extractSensitivityLabelsResult](../resources/extractsensitivitylabelsresult.md) in the response body.

In addition to [general errors](../concepts/errors.md) that apply to Microsoft Graph, this API returns the **423** status code if the file is locked for extract sensitivityLabel operation. In such cases, the `code` property on the error resource type indicates type of error blocking sensitivityLabel extraction.
The possible values for the error types include:

| Value                       | Description                                                                                                         |
|:----------------------------|:--------------------------------------------------------------------------------------------------------------------|
| fileDoubleKeyEncrypted      | Indicates that the file is protected via double key encryption and hence cannot be opened to extract sensitivityLabel.             |
| fileDecryptionNotSupported  | Indicates that the encrypted document has specific properties which do not allow these files to be opened by SPO to extract sensitivityLabel.     |
| fileDecryptionDeferred      | Indicates this file is being processed for decryption, and label extraction will be performed after some time.      |
| unknownFutureValue          | Marker value for future compatibility.                                                                              |

## Examples

### Request
<!-- { "blockType": "request", "name": "extract-sensitivitylabels", "tags": "service.graph" } -->
``` http
POST https://graph.microsoft.com/v1.0/drive/root/items/{item-id}/extractSensitivityLabels
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.extractSensitivityLabelsResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.extractSensitivityLabelsResult",
    "labels" : [
        {
        "sensitivityLabelId": "5feba255-812e-446a-ac59-a7044ef827b5",
        "assignmentMethod": "standard",
        "tenantId": "fed495cb-8c27-41ea-8749-00b0a084bc3d"
        },
        {
        "sensitivityLabelId": "fa781fdf-68c8-43ec-ae08-c4813deb2144",
        "assignmentMethod": "standard",
        "tenantId": "277601b1-6094-456c-a358-95bfc99539d7"
        },
        {
        "sensitivityLabelId": "3937098d-df0c-4c8d-8f66-5876b57b75ba",
        "assignmentMethod": "standard",
        "tenantId": "f2477f30-c8a2-422d-8995-6f056b494655"
        }
    ]
  }
}
```

