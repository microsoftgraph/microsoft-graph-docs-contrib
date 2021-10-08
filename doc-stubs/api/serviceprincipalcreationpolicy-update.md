---
title: "Update servicePrincipalCreationPolicy"
description: "Update the properties of a servicePrincipalCreationPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update servicePrincipalCreationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.

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
PATCH /servicePrincipalCreationPolicy
PATCH /policyRoot/servicePrincipalCreationPolicies/{servicePrincipalCreationPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.

The following table shows the properties that are required when you update the [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md)|
|isBuiltIn|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_serviceprincipalcreationpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipalCreationPolicy
Content-Type: application/json
Content-length: 199

{
  "@odata.type": "#microsoft.graph.servicePrincipalCreationPolicy",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isBuiltIn": "Boolean"
}
```


### Response
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
  "@odata.type": "#microsoft.graph.servicePrincipalCreationPolicy",
  "id": "a9e8a89a-a89a-a9e8-9aa8-e8a99aa8e8a9",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isBuiltIn": "Boolean"
}
```

