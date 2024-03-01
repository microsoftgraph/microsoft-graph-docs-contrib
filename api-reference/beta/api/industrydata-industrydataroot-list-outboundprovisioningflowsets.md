---
title: "List outboundProvisioningFlowSet objects"
description: "Get a list of the microsoft.graph.industryData.outboundProvisioningFlowSet objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List outboundProvisioningFlowSet objects

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-industrydataroot-list-outboundprovisioningflowsets-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydataroot-list-outboundprovisioningflowsets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/industryData/outboundProvisioningFlowSets
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

If successful, this method returns a `200 OK` response code and a collection of [outboundProvisioningFlowSet](../resources/outboundprovisioningflowset.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_outboundprovisioningflowset"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.outboundProvisioningFlowSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
      "displayName": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "id": "a6085468-7b29-cb2b-0ddd-4b3a26d2e0a9",
      "filter": {
        "@odata.type": "microsoft.graph.industryData.filter"
      }
    }
  ]
}
```

