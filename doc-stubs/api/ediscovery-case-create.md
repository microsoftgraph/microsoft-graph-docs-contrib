---
title: "Create case"
description: "Create a new case object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create case
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [case](../resources/ediscovery-case.md) object.

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
POST /compliance/ediscovery/cases
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [case](../resources/ediscovery-case.md) object.

The following table shows the properties that are required when you create the [case](../resources/ediscovery-case.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|description|String|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|caseStatus|**TODO: Add Description**. Possible values are: `unknown`, `active`, `pendingDelete`, `closing`, `closed`, `closedWithError`.|
|closedBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [case](../resources/ediscovery-case.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_case_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases
Content-Type: application/json
Content-length: 279

{
  "@odata.type": "#microsoft.graph.ediscovery.case",
  "description": "String",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String",
  "displayName": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.case"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.case",
  "id": "ee8b1131-1131-ee8b-3111-8bee31118bee",
  "description": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

