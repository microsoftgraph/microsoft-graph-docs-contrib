---
title: "Update m365AppsInstallationOptions"
description: "Update the properties of a m365AppsInstallationOptions object."
author: "yan-git"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update m365AppsInstallationOptions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-Microsoft365Install.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-Microsoft365Install.ReadWrite.All|

When calling on behalf of a user, the user needs to belong to the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
+ Global administrator
+ Office apps administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/microsoft365Apps/installationOptions
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
|settings|[microsoft.admin.m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md)|**Company wide settings for apps and services** Required.|



## Response

If successful, this method returns a `204 No Content` and no content is returned.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_m365AppsInstallationOptions"
}
-->
Either:
``` http
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "updateChannel": "current"
}
```

or

``` http
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "appsForWindows": {
    "isMicrosoft365AppsEnabled": true,
    "isVisioEnabled": false
  }
}
```

or

``` http
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "updateChannel": "monthlyEnterprise",
  "appsForWindows": {
    "isMicrosoft365AppsEnabled": true,
    "isProjectEnabled": false,
    "isSkypeForBusinessEnabled": true,
    "isVisioEnabled": false
  },
  "appsForMac": {
    "isMicrosoft365AppsEnabled": true,
    "isSkypeForBusinessEnabled": false
  }
}
```


### Response
The following example shows the response.
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
