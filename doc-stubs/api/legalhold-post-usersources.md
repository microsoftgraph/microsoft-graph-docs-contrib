---
title: "Create userSource"
description: "Create a new userSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userSource
Namespace: microsoft.graph

Create a new userSource object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}/userSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userSource](../resources/usersource.md) object.

The following table shows the properties that are required when you create the [userSource](../resources/usersource.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|email|String|**TODO: Add Description**|
|includedSources|sourceType|**TODO: Add Description**. Possible values are: `mailbox`, `site`.|



## Response

If successful, this method returns a `201 Created` response code and a [userSource](../resources/usersource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_usersource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}/userSources
Content-Type: application/json
Content-length: 208

{
  "@odata.type": "#microsoft.graph.userSource",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String"
}
```

