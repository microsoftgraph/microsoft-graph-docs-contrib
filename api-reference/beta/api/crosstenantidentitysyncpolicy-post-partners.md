---
title: "Create crossTenantIdentitySyncPolicyPartner"
description: "Create a new crossTenantIdentitySyncPolicyPartner object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create crossTenantIdentitySyncPolicyPartner
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new crossTenantIdentitySyncPolicyPartner object.

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
POST /policies/crossTenantIdentitySyncPolicy/partners
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.

You can specify the following properties when creating a **crossTenantIdentitySyncPolicyPartner**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|userSyncInbound|[Microsoft.DirectoryServices.crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_crosstenantidentitysyncpolicypartner_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/crossTenantIdentitySyncPolicy/partners
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "tenantId": "String",
  "displayName": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantIdentitySyncPolicyPartner"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "tenantId": "String",
  "displayName": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

