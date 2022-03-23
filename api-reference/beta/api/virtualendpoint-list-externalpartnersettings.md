---
title: "List cloudPcExternalPartnerSettings"
description: "Get a list of the cloudPcExternalPartnerSetting objects and their properties."
author: "Shaowei-Dong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List cloudPcExternalPartnerSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/externalPartnerSettings
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

If successful, this method returns a `200 OK` response code and a collection of [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_cloudpcexternalpartnersetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartnerSettings
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcExternalPartnerSetting)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcExternalPartnerSetting",
      "id": "b3548526-e615-3785-3118-be70b3968ec5",
      "partnerId": "String",
      "enableConnection": "Boolean",
      "lastSyncDateTime": "String (timestamp)",
      "status": "String",
      "statusDetails": "String"
    }
  ]
}
```

