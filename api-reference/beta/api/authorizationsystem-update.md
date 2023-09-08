---
title: "Update authorizationSystem"
description: "Update the properties of an authorizationSystem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update authorizationSystem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authorizationSystem](../resources/authorizationsystem.md) object.

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
PATCH /awsExternalSystemAccessFinding/affectedSystem
PATCH /authorizationSystemResource/authorizationSystem
PATCH /authorizationSystemIdentity/authorizationSystem
PATCH /external/authorizationSystems/{authorizationSystemId}
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
|authorizationSystemId|String|**TODO: Add Description** Required.|
|authorizationSystemName|String|**TODO: Add Description** Required.|
|authorizationSystemType|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [authorizationSystem](../resources/authorizationsystem.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authorizationsystem"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/awsExternalSystemAccessFinding/affectedSystem
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystem",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
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
  "@odata.type": "#microsoft.graph.authorizationSystem",
  "id": "1feed070-9621-c5c7-a78c-6dc53cf3b0e1",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

