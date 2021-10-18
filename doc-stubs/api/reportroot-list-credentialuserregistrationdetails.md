---
title: "List credentialUserRegistrationDetails"
description: "Get the credentialUserRegistrationDetails resources from the credentialUserRegistrationDetails navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List credentialUserRegistrationDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the credentialUserRegistrationDetails resources from the credentialUserRegistrationDetails navigation property.

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
GET /reports/credentialUserRegistrationDetails
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

If successful, this method returns a `200 OK` response code and a collection of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_credentialuserregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/credentialUserRegistrationDetails
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.credentialUserRegistrationDetails)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.credentialUserRegistrationDetails",
      "id": "b36e53b1-53b1-b36e-b153-6eb3b1536eb3",
      "userPrincipalName": "String",
      "userDisplayName": "String",
      "authMethods": [
        "String"
      ],
      "isRegistered": "Boolean",
      "isEnabled": "Boolean",
      "isCapable": "Boolean",
      "isMfaRegistered": "Boolean"
    }
  ]
}
```

