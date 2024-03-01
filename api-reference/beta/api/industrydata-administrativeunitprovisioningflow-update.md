---
title: "Update administrativeUnitProvisioningFlow"
description: "Update the properties of a microsoft.graph.industryData.administrativeUnitProvisioningFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update administrativeUnitProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-administrativeunitprovisioningflow-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-administrativeunitprovisioningflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /administrativeUnitProvisioningFlow
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md). Optional.|
|readinessStatus|microsoft.graph.industryData.readinessStatus|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. Optional.|
|creationOptions|[microsoft.graph.industryData.adminUnitCreationOptions](../resources/industrydata-adminunitcreationoptions.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_administrativeunitprovisioningflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/administrativeUnitProvisioningFlow
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "readinessStatus": "String",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.adminUnitCreationOptions"
  }
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "c8847fd7-a4e0-d7de-70b1-a438601eb7ee",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.adminUnitCreationOptions"
  }
}
```

