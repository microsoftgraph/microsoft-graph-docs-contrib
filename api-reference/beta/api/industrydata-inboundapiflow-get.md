---
title: "Get inboundApiFlow"
description: "Read the properties and relationships of a microsoft.graph.industryData.inboundApiFlow object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Get inboundApiFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-inboundapiflow-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-inboundapiflow-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/industryData/inboundFlows/{inboundFlowId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.inboundApiFlow](../resources/industrydata-inboundapiflow.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_inboundapiflow"
  "sampleKeys": ["7bd62d17-8c37-4494-f68d-08daddab2911"]
}
-->
``` http
GET https://graph.microsoft.com/beta/external/industryData/inboundFlows/7bd62d17-8c37-4494-f68d-08daddab2911
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.inboundApiFlow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.industryData.inboundApiFlow",
    "id": "7bd62d17-8c37-4494-f68d-08daddab2911",
    "displayName": "Inbound API Flow",
    "readinessStatus": "ready",
    "dataDomain": "educationRostering",
    "effectiveDateTime": "2024-03-12T11:10:46.924769Z",
    "expirationDateTime": "2024-03-13T11:10:46.924769Z"
  }
}
```

