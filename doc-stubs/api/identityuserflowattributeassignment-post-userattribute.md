---
title: "Add identityUserFlowAttribute"
description: "Add userAttribute by posting to the userAttribute collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add identityUserFlowAttribute
Namespace: microsoft.graph

Add userAttribute by posting to the userAttribute collection.

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
POST /identity/b2cUserFlows/{b2cIdentityUserFlowId}/userAttributeAssignments/{identityUserFlowAttributeAssignmentId}/userAttribute/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object.

The following table shows the properties that are required when you create the [identityUserFlowAttribute](../resources/identityuserflowattribute.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|userFlowAttributeType|identityUserFlowAttributeType|**TODO: Add Description**. Possible values are: `builtIn`, `custom`, `required`, `unknownFutureValue`.|
|dataType|identityUserFlowAttributeDataType|**TODO: Add Description**. Possible values are: `string`, `boolean`, `int64`, `stringCollection`, `dateTime`, `unknownFutureValue`.|



## Response

If successful, this method returns a `204 No Content` response code and an [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_identityuserflowattribute_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/b2cUserFlows/{b2cIdentityUserFlowId}/userAttributeAssignments/{identityUserFlowAttributeAssignmentId}/userAttribute/$ref
Content-Type: application/json
Content-length: 186

{
  "@odata.type": "#microsoft.graph.identityUserFlowAttribute",
  "displayName": "String",
  "description": "String",
  "userFlowAttributeType": "String",
  "dataType": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityUserFlowAttribute"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityUserFlowAttribute",
  "id": "055d23b1-23b1-055d-b123-5d05b1235d05",
  "displayName": "String",
  "description": "String",
  "userFlowAttributeType": "String",
  "dataType": "String"
}
```

