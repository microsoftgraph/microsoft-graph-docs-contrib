---
title: "List granularAdminRelationships"
description: "Get a list of the granularAdminRelationship objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List granularAdminRelationships
Namespace: microsoft.graph



Get a list of the [granularAdminRelationship](../resources/granularadminrelationship.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.Read.All, DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationship/granularAdminRelationships
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

If successful, this method returns a `200 OK` response code and a collection of [granularAdminRelationship](../resources/granularadminrelationship.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_granularadminrelationship"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.partner.customerServiceAdministration.granularAdminRelationship)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationship",
      "id": "1e0c63f8-e144-1d2b-5986-1b13565d56af",
      "name": "String",
      "duration": "String (duration)",
      "partner": {
        "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
      },
      "customer": {
        "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.granularAdminAccessDetails"
      },
      "status": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "activatedDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)"
    }
  ]
}
```

