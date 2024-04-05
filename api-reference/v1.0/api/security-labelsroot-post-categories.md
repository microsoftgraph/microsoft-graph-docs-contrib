---
title: "Create categoryTemplate"
description: "Create a new categoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create categoryTemplate
Namespace: microsoft.graph.security

Create a new [categoryTemplate](../resources/security-categorytemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_post_categories" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-post-categories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/categories
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.

You can specify the following properties when creating a **categoryTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a category name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md).|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_categorytemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/categories
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.categoryTemplate",
  "displayName": "Accounts Payable",
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.categoryTemplate",
  "id": "e2c79762-34a9-75ba-b6f0-a7c9a57978ef",
  "displayName": "Accounts Payable",
  "createdBy": {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
```
