---
title: "Create citationTemplate"
description: "Create a new citationTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create citationTemplate
Namespace: microsoft.graph.security

Create a new [citationTemplate](../resources/security-citationtemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_post_citations" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-post-citations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/citations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.

You can specify the following properties when creating a **citationTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a citation name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md).|
|citationUrl|String|Represents the URL to the published citation. Optional.|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the citation. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_citationtemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/citations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.citationTemplate",
 "displayName": "Contoso Company Policy",
  "citationUrl": "www.citationUrl.com",
  "citationJurisdiction": "Contoso"
}
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.citationTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.citationTemplate",
  "id": "c0475d01-d532-8a53-6e26-14ea58c640bf",
  "displayName": "Contoso Company Policy",
  "createdBy":  {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z",
  "createdDateTime": "String (timestamp)",
  "citationUrl": "www.citationUrl.com",
  "citationJurisdiction": "String"
}
```

