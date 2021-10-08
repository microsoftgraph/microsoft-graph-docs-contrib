---
title: "Update subscribedSku"
description: "Update the properties of a subscribedSku object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update subscribedSku
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [subscribedSku](../resources/subscribedsku.md) object.

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
PATCH /subscribedSkus/{subscribedSkusId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [subscribedSku](../resources/subscribedsku.md) object.

The following table shows the properties that are required when you update the [subscribedSku](../resources/subscribedsku.md).

|Property|Type|Description|
|:---|:---|:---|
|capabilityStatus|String|**TODO: Add Description**|
|consumedUnits|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|prepaidUnits|[Microsoft.DirectoryServices.licenseUnitsDetail](../resources/licenseunitsdetail.md)|**TODO: Add Description**|
|servicePlans|[Microsoft.DirectoryServices.servicePlanInfo](../resources/serviceplaninfo.md) collection|**TODO: Add Description**|
|skuId|Guid|**TODO: Add Description**|
|skuPartNumber|String|**TODO: Add Description**|
|appliesTo|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [subscribedSku](../resources/subscribedsku.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_subscribedsku"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/subscribedSkus/{subscribedSkusId}
Content-Type: application/json
Content-length: 376

{
  "@odata.type": "#microsoft.graph.subscribedSku",
  "capabilityStatus": "String",
  "consumedUnits": "Integer",
  "prepaidUnits": {
    "@odata.type": "microsoft.graph.licenseUnitsDetail"
  },
  "servicePlans": [
    {
      "@odata.type": "microsoft.graph.servicePlanInfo"
    }
  ],
  "skuId": "Guid",
  "skuPartNumber": "String",
  "appliesTo": "String"
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
  "@odata.type": "#microsoft.graph.subscribedSku",
  "capabilityStatus": "String",
  "consumedUnits": "Integer",
  "id": "3f2e3e8c-3e8c-3f2e-8c3e-2e3f8c3e2e3f",
  "prepaidUnits": {
    "@odata.type": "microsoft.graph.licenseUnitsDetail"
  },
  "servicePlans": [
    {
      "@odata.type": "microsoft.graph.servicePlanInfo"
    }
  ],
  "skuId": "Guid",
  "skuPartNumber": "String",
  "appliesTo": "String"
}
```

