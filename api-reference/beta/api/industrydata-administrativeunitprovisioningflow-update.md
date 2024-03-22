---
title: "Update administrativeUnitProvisioningFlow"
description: "Update the properties of an administrativeUnitProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Update administrativeUnitProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.

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

```http
PATCH /external/industryData/OutboundProvisioningFlowSets/{id}/provisioningFlows/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|creationOptions|[microsoft.graph.industryData.adminUnitCreationOptions](../resources/industrydata-adminunitcreationoptions.md)|The different attribute choices for the administrative units to be provisioned. Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_administrativeunitprovisioningflow"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/f66e97ad-0870-46e0-3ff3-08dc49dccdc9
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "creationOptions":
  {
    "createBasedOnOrg": true,
    "createBasedOnOrgPlusroleGroup": false
  }
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
