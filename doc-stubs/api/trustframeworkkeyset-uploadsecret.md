---
title: "trustFrameworkKeySet: uploadSecret"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# trustFrameworkKeySet: uploadSecret
Namespace: microsoft.graph

**TODO: Add Description**

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
POST /trustFramework/keySets/{trustFrameworkKeySetId}/uploadSecret
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|use|String|**TODO: Add Description**|
|k|String|**TODO: Add Description**|
|nbf|Int64|**TODO: Add Description**|
|exp|Int64|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [trustFrameworkKey](../resources/trustframeworkkey.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "trustframeworkkeyset_uploadsecret"
}
-->
``` http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{trustFrameworkKeySetId}/uploadSecret

Content-Type: application/json
Content-length: 83

{
  "use": "String",
  "k": "String",
  "nbf": "Integer",
  "exp": "Integer"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkKey"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "microsoft.graph.trustFrameworkKey"
  }
}
```

