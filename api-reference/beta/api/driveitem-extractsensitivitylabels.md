---
title: "driveItem: extractSensitivityLabels"
description: "Extract one or more sensitivity labels assigned to a drive item."
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# driveItem: extractSensitivityLabels
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Extract one or more sensitivity labels assigned to a drive item and update the metadata of a drive item with the latest details of the assigned label. In case of failure to extract the sensitivity labels of a file, an extraction error will be thrown with the applicable error code and message.

For more information about sensitivity labels from an administrator's perspective, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide&preserve-view=true).

> **Note**: This API is applicable only for supported file extensions. When called, this API first retrieves the sensitivity label metadata of the file from the database, then it checks to determine whether the sensitivity label details are the latest in terms of file content. If yes, the retrieved values from the database are returned. If no, then sensitivity labels are extracted from the content stream of the file, the corresponding metadata is updated in the database, and the newly extracted values are returned.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                                                             |
|:--------------------------------------|:--------------------------------------------------------------------------------------------------------|
|Delegated (work or school account)     | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All                                |
|Delegated (personal Microsoft account) | Not supported.                                                                                          |
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

If successful, this action returns a `200 OK` response code and an [extractSensitivityLabelsResult](../resources/extractsensitivitylabelsresult.md) object in the response body.

In addition to general errors that apply to Microsoft Graph, this API returns the `423 Locked` response code, which indicates that the file being accessed is locked. In such cases, the **code** property of the response object indicates the error type that blocks the sensitivity label extraction.
The following are the possible values for the error types.

| Value                       | Description                                                                                                         |
|:----------------------------|:--------------------------------------------------------------------------------------------------------------------|
| fileDoubleKeyEncrypted      | Indicates that the file is protected via double key encryption; hence it cannot be opened for the extraction of the sensitivity labels.             |
| fileDecryptionNotSupported  | Indicates that the encrypted file has specific properties which do not allow these files to be opened by SharePoint to extract sensitivity labels.    |
| fileDecryptionDeferred      | Indicates that the file is being processed for decryption; hence it cannot be opened for the extraction of the sensitivity labels.      |
| unknownFutureValue          | Evolvable enumeration sentinel value. Do not use.                                                                   |

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "extract-sensitivitylabels", "tags": "service.graph", "sampleKeys": ["016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U"] } -->
``` http
POST https://graph.microsoft.com/beta/drive/root/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/extractSensitivityLabels
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extract-sensitivitylabels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

The following is an example of the response.

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
    "labels": [
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

