---
title: "Update cloudPcExternalPartnerSetting"
description: "Update the properties of a cloudPcExternalPartnerSetting object."
author: "Shaowei-Dong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Update cloudPcExternalPartnerSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) object.

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
PATCH /deviceManagement/virtualEndpoint/externalPartnerSettings/{cloudPcExternalPartnerSettingId}
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
|partnerId|String|**TODO: Add Description** Required.|
|enableConnection|Boolean|**TODO: Add Description** Required.|
|lastSyncDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|status|cloudPcExternalPartnerStatus|**TODO: Add Description**. The possible values are: `notAvailable`, `available`, `healthy`, `unhealthy`, `unknownFutureValue`. Required.|
|statusDetails|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_cloudpcexternalpartnersetting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartnerSettings/{cloudPcExternalPartnerSettingId}
Content-Type: application/json
Content-length: 229

{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerSetting",
  "partnerId": "String",
  "enableConnection": "Boolean",
  "lastSyncDateTime": "String (timestamp)",
  "status": "String",
  "statusDetails": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerSetting",
  "id": "b3548526-e615-3785-3118-be70b3968ec5",
  "partnerId": "String",
  "enableConnection": "Boolean",
  "lastSyncDateTime": "String (timestamp)",
  "status": "String",
  "statusDetails": "String"
}
```

