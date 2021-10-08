---
title: "Create multiTenantCollaboration"
description: "Create a new multiTenantCollaboration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create multiTenantCollaboration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new multiTenantCollaboration object.

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
POST /tenantRelationships/multiTenantCollaboration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantCollaboration](../resources/multitenantcollaboration.md) object.

The following table shows the properties that are required when you create the [multiTenantCollaboration](../resources/multitenantcollaboration.md).

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|pendingState|[Microsoft.DirectoryServices.multiTenantCollaborationPendingState](../resources/multitenantcollaborationpendingstate.md)|**TODO: Add Description**|
|state|multiTenantCollaborationState|**TODO: Add Description**. The possible values are: `created`, `deleted`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [multiTenantCollaboration](../resources/multitenantcollaboration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_multitenantcollaboration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/multiTenantCollaboration
Content-Type: application/json
Content-length: 258

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantCollaboration",
  "description": "String",
  "displayName": "String",
  "pendingState": {
    "@odata.type": "microsoft.graph.multiTenantCollaborationPendingState"
  },
  "state": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantCollaboration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantCollaboration",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "pendingState": {
    "@odata.type": "microsoft.graph.multiTenantCollaborationPendingState"
  },
  "state": "String"
}
```

