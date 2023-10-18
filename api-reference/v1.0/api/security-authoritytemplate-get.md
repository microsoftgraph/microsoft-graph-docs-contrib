---
title: "Get authorityTemplate"
description: "Read the properties and relationships of an authorityTemplate."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get authorityTemplate
Namespace: microsoft.graph.security

Read the properties and relationships of a [authorityTemplate](../resources/security-authoritytemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/authorities/{authorityTemplateId}
GET /security/labels/retentionLabels/{retentionLabelId}/descriptors/authorityTemplate
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_authoritytemplate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/labels/authorities/a94af2e3-853b-6fcc-c898-d61d3a6d9efc
```



### Response
Here's an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.authorityTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.authorityTemplate",
    "id": "a94af2e3-853b-6fcc-c898-d61d3a6d9efc",
    "displayName": "String",
    "createdBy": {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
}
```

