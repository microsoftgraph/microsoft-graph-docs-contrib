---
title: "Create filePlanReferenceTemplate"
description: "Create a new microsoft.graph.security.filePlanReferenceTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create filePlanReferenceTemplate
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/filePlanReferences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md) object.

You can specify the following properties when creating a **filePlanReferenceTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_fileplanreferencetemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/labels/filePlanReferences
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.filePlanReferenceTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "id": "b1f7b518-a44f-1d4b-c6f1-ab8771d3907c",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

