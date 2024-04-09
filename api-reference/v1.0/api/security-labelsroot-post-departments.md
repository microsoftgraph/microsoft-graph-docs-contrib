---
title: "Create departmentTemplate"
description: "Create a new departmentTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create departmentTemplate
Namespace: microsoft.graph.security

Create a new [departmentTemplate](../resources/security-departmenttemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_post_departments" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-post-departments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/departments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.

You can specify the following properties when creating a **departmentTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a department name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md).|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_departmenttemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/departments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.departmentTemplate",
  "displayName": "Finance",
}
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.departmentTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.departmentTemplate",
  "id": "11b44677-9f06-c85a-4a0b-766b66904bf8",
  "displayName": "Finance",
  "createdBy": {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
```

