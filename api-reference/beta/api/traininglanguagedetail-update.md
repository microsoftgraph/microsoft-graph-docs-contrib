---
title: "Update trainingLanguageDetail"
description: "Update the properties of a trainingLanguageDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update trainingLanguageDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.

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
PATCH /security/attackSimulation/trainings/{trainingId}/languageDetails/{trainingLanguageDetailId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|content|String|**TODO: Add Description** Optional.|
|locale|String|**TODO: Add Description** Optional.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isDefaultLangauge|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [trainingLanguageDetail](../resources/traininglanguagedetail.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_traininglanguagedetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/attackSimulation/trainings/{trainingId}/languageDetails/{trainingLanguageDetailId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.trainingLanguageDetail",
  "displayName": "String",
  "description": "String",
  "content": "String",
  "locale": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "isDefaultLangauge": "Boolean"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.trainingLanguageDetail",
  "id": "286af964-f055-7238-273d-a919192215bd",
  "displayName": "String",
  "description": "String",
  "content": "String",
  "locale": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isDefaultLangauge": "Boolean"
}
```

