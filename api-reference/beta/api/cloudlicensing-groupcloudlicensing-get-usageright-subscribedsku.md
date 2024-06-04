---
title: "Get subscribedSku for group usageRight"
description: "Get the subscribedSku resources from the subscribedSku navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List subscribedSku

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the subscribedSku resources from the subscribedSku navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-usageright-list-subscribedsku-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-usageright-list-subscribedsku-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupId}/cloudLicensing/usageRights/{usageRightId}/subscribedSku
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [subscribedSku](../resources/subscribedsku.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_subscribedsku"
}
-->
``` http
GET https://graph.microsoft.com/beta/usageRight/subscribedSku
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.subscribedSku)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.subscribedSku",
      "id": "21090304-a864-3f86-3209-3d5fabfd658c",
      "accountId": "String",
      "accountName": "String",
      "appliesTo": "String",
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
      "subscriptionIds": [
        "String"
      ]
    }
  ]
}
```

