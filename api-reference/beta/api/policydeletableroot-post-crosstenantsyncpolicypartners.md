---
title: "Create crossTenantIdentitySyncPolicyPartner"
description: "Create a new crossTenantIdentitySyncPolicyPartner object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create crossTenantIdentitySyncPolicyPartner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new crossTenantIdentitySyncPolicyPartner object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policydeletableroot-post-crosstenantsyncpolicypartners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableroot-post-crosstenantsyncpolicypartners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/deletedItems/crossTenantSyncPolicyPartners
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.

You can specify the following properties when creating a **crossTenantIdentitySyncPolicyPartner**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md). Optional.|
|tenantId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|externalCloudAuthorizedApplicationId|String|**TODO: Add Description** Optional.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_crosstenantidentitysyncpolicypartner_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "deletedDateTime": "String (timestamp)",
  "tenantId": "bdc19dd5-2bae-1054-6e1b-5fe9cec1f526",
  "displayName": "String",
  "externalCloudAuthorizedApplicationId": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```


### Response

The following example shows the response.
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
  "deletedDateTime": "String (timestamp)",
  "tenantId": "bdc19dd5-2bae-1054-6e1b-5fe9cec1f526",
  "displayName": "String",
  "externalCloudAuthorizedApplicationId": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

