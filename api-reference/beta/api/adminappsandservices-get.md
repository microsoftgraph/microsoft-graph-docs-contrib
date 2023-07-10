---
title: "Get adminAppsAndServices"
description: "Read the properties and relationships of a Microsoft Graph adminAppsAndServices object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Get adminAppsAndServices
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [adminAppsAndServices](../resources/adminappsandservices.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-AppsAndServices.Read.All, OrgSettings-AppsAndServices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-AppsAndServices.Read.All, OrgSettings-AppsAndServices.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/appsAndServices
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

If successful, this method returns a `200 OK` response code and a [adminAppsAndServices](../resources/adminappsandservices.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_adminappsandservices"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/appsAndServices
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminAppsAndServices"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.adminAppsAndServices",
    "id": "c079f617-c04e-c14f-0750-cb2f87064342",
    "settings": {
      "@odata.type": "microsoft.graph.appsAndServicesSettings",
      "isOfficeStoreEnabled": false,
      "isAppAndServicesTrialEnabled": true
    }
  }
}
```

