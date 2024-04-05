---
title: "Create filePlanReferenceTemplate"
description: "Create a new filePlanReferenceTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create filePlanReferenceTemplate
Namespace: microsoft.graph.security

Create a new [filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_post_fileplanreferences" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-post-fileplanreferences-permissions.md)]

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
In the request body, supply a JSON representation of the [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.

You can specify the following properties when creating a **filePlanReferenceTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a file plan reference name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md).|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_fileplanreferencetemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/filePlanReferences
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "displayName": "FIN 01-02-001",
}
```


### Response
Here's an example of the response.
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
  "displayName": "FIN 01-02-001",
  "createdBy": {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
```

