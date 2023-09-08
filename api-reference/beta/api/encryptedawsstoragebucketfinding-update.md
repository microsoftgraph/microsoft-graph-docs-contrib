---
title: "Update encryptedAwsStorageBucketFinding"
description: "Update the properties of an encryptedAwsStorageBucketFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update encryptedAwsStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.

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
PATCH /encryptedAwsStorageBucketFinding
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
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md). Required.|
|accessibility|awsAccessType|**TODO: Add Description**. The possible values are: `public`, `restricted`, `crossAccount`, `private`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_encryptedawsstoragebucketfinding"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/encryptedAwsStorageBucketFinding
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.encryptedAwsStorageBucketFinding",
  "accessibility": "String"
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
  "@odata.type": "#microsoft.graph.encryptedAwsStorageBucketFinding",
  "id": "ec25aa44-b479-a335-6d7b-be032c89191f",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String"
}
```

