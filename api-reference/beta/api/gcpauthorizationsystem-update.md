---
title: "Update gcpAuthorizationSystem"
description: "Update the properties of a gcpAuthorizationSystem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update gcpAuthorizationSystem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object.

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
PATCH ** Entity URI for microsoft.graph.gcpAuthorizationSystem not found
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
|authorizationSystemId|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md). Required.|
|authorizationSystemName|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md). Required.|
|authorizationSystemType|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md). Required.|
|associatedIdentities|[gcpAssociatedIdentities](../resources/gcpassociatedidentities.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_gcpauthorizationsystem"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.gcpAuthorizationSystem not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String",
  "associatedIdentities": {
    "@odata.type": "microsoft.graph.gcpAssociatedIdentities"
  }
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
  "id": "bad44568-b498-99fe-a3bb-9aef506fb11c",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String",
  "associatedIdentities": {
    "@odata.type": "microsoft.graph.gcpAssociatedIdentities"
  }
}
```

