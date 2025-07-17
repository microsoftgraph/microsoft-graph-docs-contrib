---
title: "driveItem: assignSensitivityLabel"
description: "Asynchronously assign a sensitivity label to a driveItem."
author: "abhishek-microsoft-2021"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 04/04/2024
---

# driveItem: assignSensitivityLabel
Namespace: microsoft.graph

Asynchronously assign a sensitivity label to a [driveItem][item-resource].

This API is part of Microsoft SharePoint and OneDrive APIs that perform advanced premium administrative functions and is considered a protected API. Protected APIs require you to have additional validation, beyond permission and consent, before you can use them. Before you call this API, you must [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup).

For more information about sensitivity labels from an administrator's perspective, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide&preserve-view=true).

> [!NOTE]
> This is a metered API and some charges for use may apply. For details, see [Overview of metered Microsoft 365 APIs in Microsoft Graph](/graph/metered-api-overview).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_assignsensitivitylabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-assignsensitivitylabel-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/assignSensitivityLabel
POST /drives/{drive-id}/root:/{item-path}:/assignSensitivityLabel
POST /groups/{group-id}/drive/items/{item-id}/assignSensitivityLabel
POST /groups/{group-id}/drive/root:/{item-path}:/assignSensitivityLabel
POST /me/drive/items/{item-id}/assignSensitivityLabel
POST /me/drive/root:/{item-path}:/assignSensitivityLabel
POST /sites/{site-id}/drive/items/{item-id}/assignSensitivityLabel
POST /sites/{site-id}/drive/root:/{item-path}:/assignSensitivityLabel
POST /users/{user-id}/drive/items/{item-id}/assignSensitivityLabel
POST /users/{user-id}/drive/root:/{item-path}:/assignSensitivityLabel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, provide the ID for the sensitivity label that is to be assigned to a given file. The following table lists the required and optional input parameters.

| Name                | Value        |Description          |
|:--------------------|:-----------------------|:---------------------------------|
| sensitivityLabelId  | String  | Required. ID of the sensitivity label to be assigned, or empty string to remove the sensitivity label.              |
| assignmentMethod    | [sensitivityLabelAssignmentMethod](/graph/api/resources/sensitivitylabelassignment?view=graph-rest-1.0&preserve-view=true#sensitivitylabelassignmentmethod-values) | Optional. The assignment method of the label on the document. Indicates whether the assignment of the label was done automatically, standard, or as a privileged operation (the equivalent of an administrator operation).     |
| justificationText   | String | Optional. Justification text for audit purposes, and is required when downgrading/removing a label.  |

## Response

If successful, the API returns a `202 Accepted` HTTP response code with an empty response body. The `Location` header provides the URL to get operation details.
For more information about how to monitor the progress of an assign sensitivity label operation, see [monitoring long-running operations](/graph/long-running-actions-overview).

In addition to general errors that apply to Microsoft Graph, this API returns the `423 Locked` response code, which indicates that the file being accessed is locked. In such cases, the **code** property of the response object indicates the error type that blocks the operation.
Also, Few Irm Protected sensitivity labels can't be updated by Application and need delegated user access to validate if the user has proper rights, and for these scenarios the API returns a `Not Supported` response code.

The following table lists the possible values for the error types.

| Value                       | Description                                                                                                         |
|:----------------------------|:--------------------------------------------------------------------------------------------------------------------|
| fileDoubleKeyEncrypted      | Indicates that the file is protected via double key encryption; therefore, it can't be opened.                          |
| fileDecryptionNotSupported  | Indicates that the encrypted file has specific properties that don't allow these files to be opened by SharePoint.|
| fileDecryptionDeferred      | Indicates that the file is being processed for decryption; therefore, it can't be opened.                               |
| unknownFutureValue          | Evolvable enumeration sentinel value. Don't use.                                                                   |

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "assignSensitivityLabel", "tags": "service.graph", "sampleKeys": ["016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U"] } -->
``` http
POST https://graph.microsoft.com/v1.0/drive/root/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/assignSensitivityLabel
Content-Type: application/json

{
  "sensitivityLabelId": "5feba255-812e-446a-ac59-a7044ef827b5",
  "assignmentMethod": "standard",
  "justificationText": "test_justification"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/assignsensitivitylabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/QXNzaWduU2Vuc2l0aXZpdHlMYWJlbCxiMzc3ODY3OS04OWQ3LTRkYmYtYjg0MC1jYWM1NzRhY2FlNmE?tempAuth=eyJ0eXAiOiJKV1QiLCJhb....
```
The value of the `Location` header provides a URL for a service that returns the current state of the assign sensitivity label operation.
You can use this information to [determine when the assign sensitivity label operation has finished](/graph/long-running-actions-overview).

### Remarks
The response from the API only indicates that the assign sensitivity label operation was accepted or rejected. The operation might be rejected, for example, if the file type isn't supported, or the file is double encrypted. Audit events for both success and failure cases are logged. For more information, see [Audit log activities](/purview/audit-log-activities#sensitivity-label-activities).

[item-resource]: ../resources/driveitem.md
