---
title: "Create ediscoveryHoldPolicy"
description: "Create a new ediscoveryHoldPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create ediscoveryHoldPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.

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
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.

You can specify the following properties when creating an **ediscoveryHoldPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). Optional.|
|status|policyStatus|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md). The possible values are: `pending`, `error`, `success`, `unknownFutureValue`. Optional.|
|isEnabled|Boolean|**TODO: Add Description** Optional.|
|contentQuery|String|**TODO: Add Description** Optional.|
|errors|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ediscoveryholdpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds
Content-Type: application/json
Content-length: 315

{
  "@odata.type": "#microsoft.graph.security.ediscoveryHoldPolicy",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "status": "String",
  "isEnabled": "Boolean",
  "contentQuery": "String",
  "errors": [
    "String"
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryHoldPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.ediscoveryHoldPolicy",
  "id": "443fa57b-b7df-068e-8e4d-733c3d38c8b1",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "isEnabled": "Boolean",
  "contentQuery": "String",
  "errors": [
    "String"
  ]
}
```

