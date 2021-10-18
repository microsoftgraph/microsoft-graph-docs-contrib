---
title: "Update azureADLicenseUsage"
description: "Update the properties of an azureADLicenseUsage object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update azureADLicenseUsage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [azureADLicenseUsage](../resources/azureadlicenseusage.md) object.

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
PATCH /azureADLicenseUsage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|snapshotDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|licenseInfoDetails|[Microsoft.AAD.Reporting.licenseInfoDetail](../resources/licenseinfodetail.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [azureADLicenseUsage](../resources/azureadlicenseusage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_azureadlicenseusage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/azureADLicenseUsage
Content-Type: application/json
Content-length: 211

{
  "@odata.type": "#microsoft.graph.azureADLicenseUsage",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.azureADLicenseUsage",
  "id": "efae1072-1072-efae-7210-aeef7210aeef",
  "snapshotDateTime": "String (timestamp)",
  "licenseInfoDetails": [
    {
      "@odata.type": "microsoft.graph.licenseInfoDetail"
    }
  ]
}
```

