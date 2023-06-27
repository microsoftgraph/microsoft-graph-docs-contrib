---
title: "Update detectionRule"
description: "Update the properties of a microsoft.graph.security.detectionRule object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object.

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
PATCH /detectionRule
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
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|createdBy|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|lastModifiedBy|String|**TODO: Add Description** Inherited from [microsoft.graph.security.protectionRule](../resources/security-protectionrule.md). Required.|
|queryCondition|[microsoft.graph.security.queryCondition](../resources/security-querycondition.md)|**TODO: Add Description** Optional.|
|schedule|[microsoft.graph.security.ruleSchedule](../resources/security-ruleschedule.md)|**TODO: Add Description** Optional.|
|lastRunDetails|[microsoft.graph.security.runDetails](../resources/security-rundetails.md)|**TODO: Add Description** Optional.|
|detectionAction|[microsoft.graph.security.detectionAction](../resources/security-detectionaction.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_detectionrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/detectionRule
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "displayName": "String",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "queryCondition": {
    "@odata.type": "microsoft.graph.security.queryCondition"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.security.ruleSchedule"
  },
  "lastRunDetails": {
    "@odata.type": "microsoft.graph.security.runDetails"
  },
  "detectionAction": {
    "@odata.type": "microsoft.graph.security.detectionAction"
  }
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
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "4790e8ec-9488-3dde-c3a6-be0c4ba14cf9",
  "displayName": "String",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "queryCondition": {
    "@odata.type": "microsoft.graph.security.queryCondition"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.security.ruleSchedule"
  },
  "lastRunDetails": {
    "@odata.type": "microsoft.graph.security.runDetails"
  },
  "detectionAction": {
    "@odata.type": "microsoft.graph.security.detectionAction"
  }
}
```

