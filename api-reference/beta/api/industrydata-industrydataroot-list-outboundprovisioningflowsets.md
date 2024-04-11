---
title: "List outboundProvisioningFlowSet objects"
description: "Get a list of the outboundProvisioningFlowSet objects and their properties."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# List outboundProvisioningFlowSet objects

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) objects and their properties.

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

```http
GET /external/industryData/outboundProvisioningFlowSets
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_outboundprovisioningflowset"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.outboundProvisioningFlowSet)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets",
    "value": [
        {
            "id": "6c74bedb-23fa-44c9-d478-08dc3a38e458",
            "createdDateTime": "2024-03-05T02:12:29.6430906Z",
            "lastModifiedDateTime": "2024-03-05T02:12:29.6430906Z",
            "displayName": "Outbound Provisioning Flow Test",
            "filter": {
                "@odata.type": "#microsoft.graph.industryData.basicFilter",
                "attribute": "orgExternalId",
                "in": [
                    "Quarter",
                    "Demo"
                ]
            }
        },
        {
            "id": "8c33d025-5e64-4550-2aa3-08dc4ac66fca",
            "createdDateTime": "2024-03-25T22:24:06.0882415Z",
            "lastModifiedDateTime": "2024-03-25T22:24:06.0882415Z",
            "displayName": "Outbound Provisioning Flow",
            "filter": {
                "@odata.type": "#microsoft.graph.industryData.basicFilter",
                "attribute": "orgExternalId",
                "in": [
                    "Practice",
                    "Tactics"
                ]
            }
        }
    ]
}
```
