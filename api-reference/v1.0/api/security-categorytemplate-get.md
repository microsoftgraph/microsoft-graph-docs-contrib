---
title: "Get categoryTemplate"
description: "Read the properties and relationships of a categoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get categoryTemplate
Namespace: microsoft.graph.security

Read the properties and relationships of a [categoryTemplate](../resources/security-categorytemplate.md) object.

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
GET /security/labels/categories/{categoryTemplateId}
GET /security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For example, to retrieve the **subategories** property associated with this particular category, you can use the `expand` parameter:`$expand=subcategories`. For general information, see [OData query parameters](/graph/query-parameters). 

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_categorytemplate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/labels/categories/e2c79762-34a9-75ba-b6f0-a7c9a57978ef
```

### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.categoryTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.categoryTemplate",
    "id": "e2c79762-34a9-75ba-b6f0-a7c9a57978ef",
    "displayName": "Accounts payable",
    "createdBy":  {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
}
```

