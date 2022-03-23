---
title: "Create cloudPcExternalPartnerSetting"
description: "Create a new cloudPcExternalPartnerSetting object."
author: "Shaowei-Dong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcExternalPartnerSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) object.

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
POST /deviceManagement/virtualEndpoint/externalPartnerSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) object.

You can specify the following properties when creating a **cloudPcExternalPartnerSetting**.

|Property|Type|Description|
|:---|:---|:---|
|partnerId|String|**TODO: Add Description** Required.|
|enableConnection|Boolean|**TODO: Add Description** Required.|
|lastSyncDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|status|cloudPcExternalPartnerStatus|**TODO: Add Description**. The possible values are: `notAvailable`, `available`, `healthy`, `unhealthy`, `unknownFutureValue`. Required.|
|statusDetails|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [cloudPcExternalPartnerSetting](../resources/intune-cloudpcexternalpartnersetting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_cloudpcexternalpartnersetting_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartnerSettings
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
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExternalPartnerSetting"
}
-->
``` http
HTTP/1.1 201 Created
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

