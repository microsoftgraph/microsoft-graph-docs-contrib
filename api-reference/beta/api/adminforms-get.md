---
title: "Get adminForms"
description: "Read the properties and relationships of a Microsoft Graph adminForms object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Get adminForms
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [adminForms](../resources/adminforms.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-Forms.Read.All, OrgSettings-Forms.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-Forms.Read.All, OrgSettings-Forms.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/forms
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

If successful, this method returns a `200 OK` response code and a [adminForms](../resources/adminforms.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_adminforms"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/forms
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminForms"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.adminForms",
    "id": "7ef97113-d231-e67c-535d-7c051d9e22be",
    "settings": {
      "@odata.type": "microsoft.graph.formsSettings",
      "isExternalSendFormEnabled": true,
      "isExternalShareCollaborationEnabled": false,
      "isExternalShareResultEnabled": false,
      "isExternalShareTemplateEnabled": true,
      "isRecordIdentityByDefaultEnabled": true,
      "isBingImageSearchEnabled": true,
      "isInOrgFormsPhishingScanEnabled": false
    }
  }
}
```

