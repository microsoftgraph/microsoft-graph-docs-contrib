---
title: "Create externalGroup"
description: "Create a new externalGroup object."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Create groups

Namespace: microsoft.graph

Create a new externalGroup object.

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
POST /connections/{connectionsId}/groups
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalGroup](../resources/externalgroup.md) object.

The following table shows the properties that are required when you create the [externalGroup](../resources/externalgroup.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|

## Response

If successful, this method returns a `201 Created` response code and an [externalGroup](../resources/externalgroup.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_externalgroup_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/connections/{connectionsId}/groups
Content-Type: application/json
Content-length: 125

{
  "@odata.type": "#microsoft.substrateConnectors.externalGroup",
  "displayName": "String",
  "description": "String"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.substrateConnectors.externalGroup"
}
-->

``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.substrateConnectors.externalGroup",
  "id": "db8fac7c-ac7c-db8f-7cac-8fdb7cac8fdb",
  "displayName": "String",
  "description": "String"
}
```
