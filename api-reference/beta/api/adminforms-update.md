---
title: "Update adminForms"
description: "Update the properties of a Microsoft Graph adminForms object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update adminForms
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [adminForms](../resources/adminforms.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-Forms.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-Forms.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/forms
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|settings|[formsSettings](../resources/formssettings.md)|Company-wide settings for Microsoft Forms. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [adminForms](../resources/adminforms.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_adminforms"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/forms
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.adminForms",
  "settings": {
    "@odata.type": "microsoft.graph.formsSettings",
    "isExternalSendFormEnabled": true,
    "isExternalShareCollaborationEnabled": false,
    "isExternalShareResultEnabled": false,
    "isExternalShareTemplateEnabled": false,
    "isRecordIdentityByDefaultEnabled": true,
    "isBingImageSearchEnabled": true,
    "isInOrgFormsPhishingScanEnabled": false
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: text/plain
```

