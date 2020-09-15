---
title: "Create permissionGrantPolicy"
description: "Create a new permissionGrantPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create permissionGrantPolicy
Namespace: microsoft.graph

Create a new [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.

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
POST /policies/permissionGrantPolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.

The following table shows the properties that are required when you create the [permissionGrantPolicy](../resources/permissiongrantpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|



## Response

If successful, this method returns a `201 Created` response code and a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_permissiongrantpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/policies/permissionGrantPolicies
Content-Type: application/json
Content-length: 163

{
  "@odata.type": "#microsoft.graph.permissionGrantPolicy",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPolicy"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.permissionGrantPolicy",
  "id": "27eb0cbf-0cbf-27eb-bf0c-eb27bf0ceb27",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String"
}
```

