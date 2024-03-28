---
title: "Get administrativeUnitProvisioningFlow"
description: "Read the properties and relationships of an administrativeUnitProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Get administrativeUnitProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-administrativeunitprovisioningflow-get-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-administrativeunitprovisioningflow-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/OutboundProvisioningFlowSets/{id}/provisioningFlows/{id}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_administrativeunitprovisioningflow"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/f66e97ad-0870-46e0-3ff3-08dc49dccdc9
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.administrativeUnitProvisioningFlow"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
    "id": "f66e97ad-0870-46e0-3ff3-08dc49dccdc9",
    "createdDateTime": "2024-03-22T21:28:02.7164229Z",
    "lastModifiedDateTime": "2024-03-22T21:28:02.7164229Z",
    "readinessStatus": "disabled",
    "creationOptions": {
        "createBasedOnOrg": true,
        "createBasedOnOrgPlusRoleGroup": true
    }
}
```
