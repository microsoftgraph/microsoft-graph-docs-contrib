---
title: "driveItem: extractSensitivityLabels"
description: "Extract one or more sensitivity labels assigned to a drive item."
author: "abhishek-microsoft-2021"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/04/2024
---

# driveItem: extractSensitivityLabels
Namespace: microsoft.graph

Extract one or more sensitivity labels assigned to a drive item and update the metadata of a drive item with the latest details of the assigned label. If there's a failure to extract the sensitivity labels of a file, an extraction error is thrown with the applicable error code and message.

For more information about sensitivity labels from an administrator's perspective, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide&preserve-view=true).

> [!NOTE]
> This API is applicable only for supported file extensions. When called, this API first retrieves the sensitivity label metadata of the file from the database, then it checks to determine whether the sensitivity label details are the latest in terms of file content. If yes, the retrieved values from the database are returned. If no, then sensitivity labels are extracted from the content stream of the file, the corresponding metadata is updated in the database, and the newly extracted values are returned.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_extractsensitivitylabels" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-extractsensitivitylabels-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/extractSensitivityLabels
POST /drives/{drive-id}/root:/{item-path}:/extractSensitivityLabels
POST /groups/{group-id}/drive/items/{item-id}/extractSensitivityLabels
POST /groups/{group-id}/drive/root:/{item-path}:/extractSensitivityLabels
POST /me/drive/items/{item-id}/extractSensitivityLabels
POST /me/drive/root:/{item-path}:/extractSensitivityLabels
POST /sites/{site-id}/drive/items/{item-id}/extractSensitivityLabels
POST /sites/{site-id}/drive/root:/{item-path}:/extractSensitivityLabels
POST /users/{user-id}/drive/items/{item-id}/extractSensitivityLabels
POST /users/{user-id}/drive/root:/{item-path}:/extractSensitivityLabels
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and an [extractSensitivityLabelsResult](../resources/extractsensitivitylabelsresult.md) object in the response body.

In addition to general errors that apply to Microsoft Graph, this API returns the `423 Locked` response code, which indicates that the file being accessed is locked. In such cases, the **code** property of the response object indicates the error type that blocks the sensitivity label extraction.
The following are the possible values for the error types.

| Value                       | Description                                                                                                         |
|:----------------------------|:--------------------------------------------------------------------------------------------------------------------|
| fileDoubleKeyEncrypted      | Indicates that the file is protected via double key encryption; hence it can't be opened for the extraction of the sensitivity labels.             |
| fileDecryptionNotSupported  | Indicates that the encrypted file has specific properties that don't allow these files to be opened by SharePoint to extract sensitivity labels.    |
| fileDecryptionDeferred      | Indicates that the file is being processed for decryption; hence it can't be opened for the extraction of the sensitivity labels.      |
| unknownFutureValue          | Evolvable enumeration sentinel value. Don't use.                                                                   |

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "extract-sensitivitylabels", "tags": "service.graph", "sampleKeys": ["016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U"] } -->
``` http
POST https://graph.microsoft.com/v1.0/drive/root/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/extractSensitivityLabels
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/extract-sensitivitylabels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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

