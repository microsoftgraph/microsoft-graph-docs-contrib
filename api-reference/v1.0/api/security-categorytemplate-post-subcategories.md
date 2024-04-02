---
title: "Create subcategoryTemplate"
description: "Create a new subcategoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create subcategoryTemplate
Namespace: microsoft.graph.security

Create a new [subcategoryTemplate](../resources/security-subcategorytemplate.md) object.

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
POST /security/labels/categories/{categoryTemplateId}/subcategories
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) object.

You can specify the following properties when creating a **subcategoryTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| Unique string that defines a sub-category name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_subcategorytemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/categories/{categoryTemplateId}/subcategories
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.subcategoryTemplate",
  "displayName": "Vendor Invoice",
}
```



### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.subcategoryTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.subcategoryTemplate",
  "id": "2ac39915-dbeb-e933-82e2-92b981835fa0",
  "displayName": "Vendor Invoice",
  "createdBy":  {
        "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Admin"
        }
      },
      "createdDateTime": "2021-03-24T02:09:08Z"
    }
```

