---
title: "Get m365AppsInstallationOptions"
description: "Read the properties of an m365AppsInstallationOptions object."
author: "yan-git"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Get m365AppsInstallationOptions
Namespace: microsoft.graph

Read the properties and relationships of an [m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-Microsoft365Install.Read.All, OrgSettings-Microsoft365Install.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-Microsoft365Install.Read.All, OrgSettings-Microsoft365Install.ReadWrite.All|

When calling on behalf of a user, the user needs to belong to the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
+ Global administrator
+ Global reader
+ Office apps administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/microsoft365Apps/installationOptions
```

## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_m365AppsInstallationOptions"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/microsoft365Apps/installationOptions
```


### Response
The following example shows a response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.m365AppsInstallationOptions"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#admin/microsoft365Apps/installationOptions/$entity",
    "updateChannel": "current",
    "appsForWindows": {
        "isMicrosoft365AppsEnabled": true,
        "isProjectEnabled": true,
        "isSkypeForBusinessEnabled": false,
        "isVisioEnabled": false
    },
    "appsForMac": {
        "isMicrosoft365AppsEnabled": false,
        "isSkypeForBusinessEnabled": true
    }
}
```