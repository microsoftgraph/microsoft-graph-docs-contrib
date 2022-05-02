---
title: "Update ediscoveryCase"
description: "Update the properties of an ediscoveryCase object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update ediscoveryCase
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ediscoveryCase](../resources/security-ediscoverycase.md) object.

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
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [case](../resources/security-case.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [case](../resources/security-case.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [case](../resources/security-case.md). Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [case](../resources/security-case.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [case](../resources/security-case.md). Optional.|
|status|caseStatus|**TODO: Add Description** Inherited from [case](../resources/security-case.md). The possible values are: `unknown`, `active`, `pendingDelete`, `closing`, `closed`, `closedWithError`, `unknownFutureValue`. Optional.|
|closedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Optional.|
|closedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|externalId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [ediscoveryCase](../resources/security-ediscoverycase.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycase"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}
Content-Type: application/json
Content-length: 287

{
  "@odata.type": "#microsoft.graph.security.ediscoveryCase",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String"
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
  "@odata.type": "#microsoft.graph.security.ediscoveryCase",
  "id": "07aaac84-95ea-2f1b-dffa-a773b40b823f",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String"
}
```

