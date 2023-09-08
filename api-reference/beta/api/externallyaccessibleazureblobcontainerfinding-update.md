---
title: "Update externallyAccessibleAzureBlobContainerFinding"
description: "Update the properties of an externallyAccessibleAzureBlobContainerFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update externallyAccessibleAzureBlobContainerFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.

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
PATCH /externallyAccessibleAzureBlobContainerFinding
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
|accessibility|azureAccessType|**TODO: Add Description**. The possible values are: `public`, `private`, `unknownFutureValue`. Required.|
|encryptionManagedBy|azureEncryption|**TODO: Add Description**. The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_externallyaccessibleazureblobcontainerfinding"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/externallyAccessibleAzureBlobContainerFinding
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externallyAccessibleAzureBlobContainerFinding",
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
  "@odata.type": "#microsoft.graph.externallyAccessibleAzureBlobContainerFinding",
  "id": "c20246e2-184e-94ee-4e76-0f6f4209d712",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "encryptionManagedBy": "String"
}
```

