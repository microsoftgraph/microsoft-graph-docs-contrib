---
title: "Get outboundProvisioningFlowSet"
description: "Read the properties and relationships of an outboundProvisioningFlowSet object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-outboundprovisioningflowset-get-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-outboundprovisioningflowset-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/outboundProvisioningFlowSets/{id}
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

If successful, this method returns a `200 OK` response code and an [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_outboundprovisioningflowset"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/8ac3c08f-6f93-465b-4bd9-08dc4ac773d0
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.outboundProvisioningFlowSet"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets/$entity",
    "id": "8ac3c08f-6f93-465b-4bd9-08dc4ac773d0",
    "createdDateTime": "2024-03-25T21:55:03.495336Z",
    "lastModifiedDateTime": "2024-03-25T21:55:03.495336Z",
    "displayName": "Outbound Provisioning Flow Test",
    "filter": {
        "@odata.type": "#microsoft.graph.industryData.basicFilter",
        "attribute": "orgExternalId",
        "in": [
            "Quarter",
            "Demo"
        ]
    }
}
```
