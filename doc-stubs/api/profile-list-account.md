---
title: "List account"
description: "Get the userAccountInformation resources from the account navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List account
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the userAccountInformation resources from the account navigation property.

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
GET /user/{userId}/profile/account
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

If successful, this method returns a `200 OK` response code and a collection of [userAccountInformation](../resources/useraccountinformation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_useraccountinformation"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/{userId}/profile/account
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.userAccountInformation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.userAccountInformation",
      "id": "5f6a5213-5213-5f6a-1352-6a5f13526a5f",
      "allowedAudiences": "String",
      "inference": {
        "@odata.type": "microsoft.graph.inferenceData"
      },
      "createdDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "source": {
        "@odata.type": "microsoft.graph.personDataSources"
      },
      "isSearchable": "Boolean",
      "ageGroup": "String",
      "countryCode": "String",
      "preferredLanguageTag": {
        "@odata.type": "microsoft.graph.localeInfo"
      },
      "userPrincipalName": "String"
    }
  ]
}
```

