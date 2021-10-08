---
title: "List servicePrincipalCreationConditionSets"
description: "Get a list of the servicePrincipalCreationConditionSet objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List servicePrincipalCreationConditionSets
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) objects and their properties.

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
GET /servicePrincipalCreationPolicy/includes
GET /servicePrincipalCreationPolicy/excludes
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

If successful, this method returns a `200 OK` response code and a collection of [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_serviceprincipalcreationconditionset"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipalCreationPolicy/includes
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.servicePrincipalCreationConditionSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.servicePrincipalCreationConditionSet",
      "id": "7a45970b-970b-7a45-0b97-457a0b97457a",
      "applicationIds": [
        "String"
      ],
      "applicationTenantIds": [
        "String"
      ],
      "applicationPublisherIds": [
        "String"
      ],
      "applicationsFromVerifiedPublisherOnly": "Boolean",
      "certifiedApplicationsOnly": "Boolean"
    }
  ]
}
```

