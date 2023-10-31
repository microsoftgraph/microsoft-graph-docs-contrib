---
title: "Get azureAuthorizationSystem"
description: "Read the properties and relationships of an azureAuthorizationSystem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get azureAuthorizationSystem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object.

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
GET ** Entity URI for microsoft.graph.azureAuthorizationSystem not found
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

If successful, this method returns a `200 OK` response code and an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_azureauthorizationsystem"
}
-->
``` http
GET https://graph.microsoft.com/beta** Entity URI for microsoft.graph.azureAuthorizationSystem not found
```


### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureAuthorizationSystem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.azureAuthorizationSystem",
    "id": "886fac45-801c-4476-1d0d-b6a308401b6b",
    "authorizationSystemId": "String",
    "authorizationSystemName": "String",
    "authorizationSystemType": "String",
    "associatedIdentities": {
      "@odata.type": "microsoft.graph.azureAssociatedIdentities"
    }
  }
}
```

