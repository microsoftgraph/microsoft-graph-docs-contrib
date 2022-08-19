---
title: "driveItem: assignSensitivityLabel"
description: "Asynchronously assigns sensitivity label to a driveItem."
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# driveItem: assignSensitivityLabel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Asynchronously assigns sensitivity label to a [driveItem][item-resource].

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                                                             |
|:--------------------------------------|:--------------------------------------------------------------------------------------------------------|
|Delegated (work or school account)     | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All                                               |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All                                                                    |
|Application                            | Files.ReadWrite.All, Sites.ReadWrite.All                                                                |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/assignSensitivityLabel
POST /drives/{drive-id}/root:/{item-path}/assignSensitivityLabel
POST /groups/{group-id}/drive/items/{item-id}/assignSensitivityLabel
POST /groups/{group-id}/drive/root:/{item-path}/assignSensitivityLabel
POST /me/drive/items/{item-id}/assignSensitivityLabel
POST /me/drive/root:/{item-path}/assignSensitivityLabel
POST /sites/{site-id}/drive/items/{item-id}/assignSensitivityLabel
POST /sites/{site-id}/drive/root:/{item-path}/assignSensitivityLabel
POST /users/{user-id}/drive/items/{item-id}/assignSensitivityLabel
POST /users/{user-id}/drive/root:/{item-path}/assignSensitivityLabel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
In the request body, provide Id for sensitivity label which is supposed to be assigned to given file. Details about required and optional input parameters can be referred from here:
| Name                | Value                                                                                                                                             |Description                                                                                                          |
|:--------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------|
| sensitivityLabelId  | string                                                                                                                                            | Required. Id of the sensitivity label to be assigned, or empty string to remove the sensitivity label.              |
| assignmentMethod    | [sensitivityLabelAssignmentMethod ](/graph/api/resources/sensitivitylabelassignment?view=graph-rest-beta#sensitivitylabelassignmentmethod-values) | Optional. The assignment method of the label on the document. Whether the assignment of the label was done automatically, standard or as a privileged operation (The equivalent to an administrator operation).                                                                                                                                                                                                           |
| justificationText   | string                                                                                                                                            | Optional. Justification text for audit purposes. Required when downgrading/removing label.                          |

## Response

If successful, the API returns response code `202 Accepted` with empty response body, the `Location` header will provide url to fetch operation details.
For more details about how to monitor progress of assign sensitivity label operation, please refer to [monitoring long running operations](/graph/long-running-actions-overview).

In addition to general errors that apply to Microsoft Graph, this API returns the `423 Locked` response code, which indicates that the file being accessed is locked. In such cases, the **code** property of the response object indicates the error type that blocks the operation.
The following are the possible values for the error types.

| Value                       | Description                                                                                                         |
|:----------------------------|:--------------------------------------------------------------------------------------------------------------------|
| fileDoubleKeyEncrypted      | Indicates that the file is protected via double key encryption; hence it cannot be opened.                          |
| fileDecryptionNotSupported  | Indicates that the encrypted file has specific properties which do not allow these files to be opened by SharePoint.|
| fileDecryptionDeferred      | Indicates that the file is being processed for decryption; hence it cannot be opened.                               |
| unknownFutureValue          | Evolvable enumeration sentinel value. Do not use.                                                                   |

## Examples

### Request

The following is an example of a request.

<!-- { "blockType": "request", "name": "assignSensitivityLabel", "tags": "service.graph" } -->
``` http
POST https://graph.microsoft.com/beta/drive/root/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/assignSensitivityLabel
Content-Type: application/json

{
  "sensitivityLabelId": "5feba255-812e-446a-ac59-a7044ef827b5",
  "assignmentMethod": "standard",
  "justificationText": "test_justification"
}
```


### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/QXNzaWduU2Vuc2l0aXZpdHlMYWJlbCxiMzc3ODY3OS04OWQ3LTRkYmYtYjg0MC1jYWM1NzRhY2FlNmE?tempAuth=eyJ0eXAiOiJKV1QiLCJhb....
```
The value of the `Location` header provides a URL for a service that will return the current state of the assign sensitivity label operation.
You can use this information to [determine when the assign sensitivity label operation has finished](/graph/long-running-actions-overview).

### Remarks
The response from the API will only indicate that the assign sensitivity label operation was accepted or rejected; for example, due to file type not being supported or file is double encrypted.

[item-resource]: ../resources/driveitem.md
