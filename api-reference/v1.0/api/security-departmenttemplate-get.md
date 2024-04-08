---
title: "Get departmentTemplate"
description: "Read the properties and relationships of a departmentTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get departmentTemplate
Namespace: microsoft.graph.security

Read the properties and relationships of a [departmentTemplate](../resources/security-departmenttemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_departmenttemplate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-departmenttemplate-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/departments/{departmentTemplateId}
GET /security/labels/retentionLabels/{retentionLabelId}/descriptors/departmentTemplate
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_departmenttemplate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/labels/departments/11b44677-9f06-c85a-4a0b-766b66904bf8
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

