---
title: "Get administrativeUnitProvisioningFlow"
description: "Read the properties and relationships of a microsoft.graph.industryData.administrativeUnitProvisioningFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get administrativeUnitProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.

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
``` http
GET /administrativeUnitProvisioningFlow
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_administrativeunitprovisioningflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/administrativeUnitProvisioningFlow
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.administrativeUnitProvisioningFlow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "readinessStatus": "String",
    "id": "c8847fd7-a4e0-d7de-70b1-a438601eb7ee",
    "creationOptions": {
      "@odata.type": "microsoft.graph.industryData.adminUnitCreationOptions"
    }
  }
}
```

