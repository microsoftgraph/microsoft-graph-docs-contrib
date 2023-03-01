---
title: "Create allowedValue"
description: "Create a new allowedValue object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create allowedValue
Namespace: microsoft.graph

Create a new [allowedValue](../resources/allowedvalue.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}/allowedValues
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [allowedValue](../resources/allowedvalue.md) object.

You can specify the following properties when creating an **allowedValue**.

|Property|Type|Description|
|:---|:---|:---|
|isActive|Boolean|Indicates whether the predefined value is active or deactivated. If set to `false`, this predefined value cannot be assigned to any additional supported directory objects. Required..|



## Response

If successful, this method returns a `201 Created` response code and an [allowedValue](../resources/allowedvalue.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_allowedvalue_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}/allowedValues
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.allowedValue",
  "isActive": "Boolean"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.allowedValue"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.allowedValue",
  "id": "e18a0d39-a256-262e-2fc4-9f8e1ebfdea1",
  "isActive": "Boolean"
}
```
