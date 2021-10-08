---
title: "Create sharedEmailDomain"
description: "Create a new sharedEmailDomain object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create sharedEmailDomain
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharedEmailDomain](../resources/sharedemaildomain.md) object.

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
POST /directory/sharedEmailDomains
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [sharedEmailDomain](../resources/sharedemaildomain.md) object.

The following table shows the properties that are required when you create the [sharedEmailDomain](../resources/sharedemaildomain.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|provisioningStatus|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [sharedEmailDomain](../resources/sharedemaildomain.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_sharedemaildomain_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/sharedEmailDomains
Content-Type: application/json
Content-length: 106

{
  "@odata.type": "#Microsoft.DirectoryServices.sharedEmailDomain",
  "provisioningStatus": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.sharedEmailDomain"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.sharedEmailDomain",
  "id": "8dbd9c93-9c93-8dbd-939c-bd8d939cbd8d",
  "provisioningStatus": "String"
}
```

