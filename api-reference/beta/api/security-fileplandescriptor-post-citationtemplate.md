---
title: "Create citationTemplate"
description: "Create a new microsoft.graph.security.citationTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create citationTemplate
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md) object.

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
POST /security/labels/citations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md) object.

You can specify the following properties when creating a **citationTemplate**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|
|citationUrl|String|**TODO: Add Description** Optional.|
|citationJurisdiction|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_citationtemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/labels/citations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.citationTemplate",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```


### Response
The following is an example of the response
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
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

