---
title: "Update adminAppsAndServices"
description: "Update the properties of a Microsoft Graph adminAppsAndServices object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update adminAppsAndServices
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [adminAppsAndServices](../resources/adminappsandservices.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-AppsAndServices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-AppsAndServices.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/appsAndServices
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
|settings|[appsAndServicesSettings](../resources/appsandservicessettings.md)|Company-wide settings for apps and services. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [adminAppsAndServices](../resources/adminappsandservices.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_adminappsandservices"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/appsAndServices
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.adminAppsAndServices",
  "settings": {
    "@odata.type": "microsoft.graph.appsAndServicesSettings",
    "isOfficeStoreEnabled": false,
    "isAppAndServicesTrialEnabled": false
  }
}
```


### Response
The following is an example of the response.
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

