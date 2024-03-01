---
title: "Update securityGroupProvisioningFlow"
description: "Update the properties of a microsoft.graph.industryData.securityGroupProvisioningFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update securityGroupProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-securitygroupprovisioningflow-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-securitygroupprovisioningflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /securityGroupProvisioningFlow
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
|creationOptions|[microsoft.graph.industryData.securityGroupCreationOptions](../resources/industrydata-securitygroupcreationoptions.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_securitygroupprovisioningflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/securityGroupProvisioningFlow
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
  "readinessStatus": "String",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.securityGroupCreationOptions"
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
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "756742db-e0f1-bd49-1dcb-a18f305a49b0",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.securityGroupCreationOptions"
  }
}
```

