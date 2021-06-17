---
title: "Create azureADLicenseUsage"
description: "Create a new azureADLicenseUsage object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create azureADLicenseUsage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.

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
POST ** Collection URI for Microsoft.AAD.Reporting.azureADLicenseUsage not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.

The following table shows the properties that are required when you create the [azureADLicenseUsage](../resources/azureadlicenseusage.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|snapshotDateTime|DateTimeOffset|**TODO: Add Description**|
|licenseInfoDetails|[Microsoft.AAD.Reporting.licenseInfoDetail](../resources/licenseinfodetail.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [azureADLicenseUsage](../resources/azureadlicenseusage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_azureadlicenseusage_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.AAD.Reporting.azureADLicenseUsage not found
Content-Type: application/json
Content-length: 219

{
  "@odata.type": "#Microsoft.AAD.Reporting.azureADLicenseUsage",
  "snapshotDateTime": "String (timestamp)",
  "licenseInfoDetails": [
    {
      "@odata.type": "microsoft.graph.licenseInfoDetail"
    }
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.azureADLicenseUsage"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.azureADLicenseUsage",
  "id": "b0ec1f1f-1f1f-b0ec-1f1f-ecb01f1fecb0",
  "snapshotDateTime": "String (timestamp)",
  "licenseInfoDetails": [
    {
      "@odata.type": "microsoft.graph.licenseInfoDetail"
    }
  ]
}
```

