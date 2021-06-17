---
title: "Update azureADUserFeatureUsage"
description: "Update the properties of an azureADUserFeatureUsage object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update azureADUserFeatureUsage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /azureADUserFeatureUsage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object.

The following table shows the properties that are required when you update the [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|licenseRecommended|azureADLicenseType|**TODO: Add Description**. Possible values are: `none`, `free`, `basic`, `premiumP1`, `premiumP2`, `unknownFutureValue`.|
|licenseAssigned|azureADLicenseType|**TODO: Add Description**. Possible values are: `none`, `free`, `basic`, `premiumP1`, `premiumP2`, `unknownFutureValue`.|
|featureUsageDetails|[Microsoft.AAD.Reporting.featureUsageDetail](../resources/featureusagedetail.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [azureADUserFeatureUsage](../resources/azureaduserfeatureusage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_azureaduserfeatureusage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/azureADUserFeatureUsage
Content-Type: application/json
Content-length: 376

{
  "@odata.type": "#microsoft.graph.azureADUserFeatureUsage",
  "lastUpdatedDateTime": "String (timestamp)",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "licenseRecommended": "String",
  "licenseAssigned": "String",
  "featureUsageDetails": [
    {
      "@odata.type": "microsoft.graph.featureUsageDetail"
    }
  ]
}
```


### Response
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
  "@odata.type": "#microsoft.graph.azureADUserFeatureUsage",
  "id": "17541963-1963-1754-6319-541763195417",
  "lastUpdatedDateTime": "String (timestamp)",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "licenseRecommended": "String",
  "licenseAssigned": "String",
  "featureUsageDetails": [
    {
      "@odata.type": "microsoft.graph.featureUsageDetail"
    }
  ]
}
```

