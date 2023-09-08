---
title: "Update encryptedGcpStorageBucketFinding"
description: "Update the properties of an encryptedGcpStorageBucketFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update encryptedGcpStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.

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
PATCH /encryptedGcpStorageBucketFinding
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
|accessibility|gcpAccessType|**TODO: Add Description**. The possible values are: `public`, `subjectToObjectAcls`, `private`, `unknownFutureValue`. Required.|
|encryptionManagedBy|gcpEncryption|**TODO: Add Description**. The possible values are: `google`, `customer`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_encryptedgcpstoragebucketfinding"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/encryptedGcpStorageBucketFinding
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.encryptedGcpStorageBucketFinding",
  "accessibility": "String",
  "encryptionManagedBy": "String"
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
  "@odata.type": "#microsoft.graph.encryptedGcpStorageBucketFinding",
  "id": "9a3d0546-3512-a9a3-4dcf-6593848a6301",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "encryptionManagedBy": "String"
}
```

