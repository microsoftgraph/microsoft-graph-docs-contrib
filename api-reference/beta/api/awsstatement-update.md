---
title: "Update awsStatement"
description: "Update the properties of an awsStatement object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update awsStatement
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [awsStatement](../resources/awsstatement.md) object.

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
PATCH /awsStatement
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
|statementId|String|**TODO: Add Description** Required.|
|actions|String collection|**TODO: Add Description** Required.|
|notActions|String collection|**TODO: Add Description** Required.|
|resources|String collection|**TODO: Add Description** Required.|
|notResources|String collection|**TODO: Add Description** Required.|
|effect|awsStatementEffect|**TODO: Add Description**. The possible values are: `allow`, `deny`, `unknownFutureValue`. Required.|
|condition|[awsCondition](../resources/awscondition.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [awsStatement](../resources/awsstatement.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_awsstatement"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/awsStatement
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.awsStatement",
  "statementId": "d6462000-bbe8-ff48-5b3f-0784ac004fca",
  "actions": [
    "String"
  ],
  "notActions": [
    "String"
  ],
  "resources": [
    "String"
  ],
  "notResources": [
    "String"
  ],
  "effect": "String",
  "condition": {
    "@odata.type": "microsoft.graph.awsCondition"
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
  "@odata.type": "#microsoft.graph.awsStatement",
  "statementId": "d6462000-bbe8-ff48-5b3f-0784ac004fca",
  "actions": [
    "String"
  ],
  "notActions": [
    "String"
  ],
  "resources": [
    "String"
  ],
  "notResources": [
    "String"
  ],
  "effect": "String",
  "condition": {
    "@odata.type": "microsoft.graph.awsCondition"
  }
}
```

