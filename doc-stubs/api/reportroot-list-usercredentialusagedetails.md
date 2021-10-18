---
title: "List userCredentialUsageDetails"
description: "Get the userCredentialUsageDetails resources from the userCredentialUsageDetails navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List userCredentialUsageDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the userCredentialUsageDetails resources from the userCredentialUsageDetails navigation property.

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
GET /reports/userCredentialUsageDetails
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_usercredentialusagedetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userCredentialUsageDetails
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.userCredentialUsageDetails)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.userCredentialUsageDetails",
      "id": "14e6441c-441c-14e6-1c44-e6141c44e614",
      "feature": "String",
      "userPrincipalName": "String",
      "userDisplayName": "String",
      "isSuccess": "Boolean",
      "authMethod": "String",
      "failureReason": "String",
      "eventDateTime": "String (timestamp)"
    }
  ]
}
```

