---
title: "Update encryptedAzureStorageAccountFinding"
description: "Update the properties of an encryptedAzureStorageAccountFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update encryptedAzureStorageAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object.

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
PATCH /encryptedAzureStorageAccountFinding
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
|encryptionManagedBy|azureEncryption|**TODO: Add Description**. The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_encryptedazurestorageaccountfinding"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/encryptedAzureStorageAccountFinding
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.encryptedAzureStorageAccountFinding",
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
  "@odata.type": "#microsoft.graph.encryptedAzureStorageAccountFinding",
  "id": "713b8da8-bcc0-c6cb-26ca-a90e1c721275",
  "createdDateTime": "String (timestamp)",
  "encryptionManagedBy": "String"
}
```

