---
title: "Get cloudPcOrganizationSettings"
description: "Read the properties and relationships of the cloudPcOrganizationSettings object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcOrganizationSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of the [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) of current tenant. And there's only one [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) in one tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/cloudPcOrganizationSettings
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

If successful, this method returns a `200 OK` response code and a [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_cloudpcorganizationsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/cloudPcOrganizationSettings
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOrganizationSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcOrganizationSettings",
    "id": "8660bf17-bf17-8660-17bf-608617bfffff",
    "userAccountType": "standardUser",
    "osVersion": "windows11"
  }
}
```
