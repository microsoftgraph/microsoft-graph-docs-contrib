---
title: "resourcePolicyConfiguration: getFederatedIdentityCredentialSubject"
description: "Compute the federated identity credential subject for a candidate application using the resourcePolicyConfiguration singleton."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# resourcePolicyConfiguration: getFederatedIdentityCredentialSubject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Compute the federated identity credential subject for a candidate application.

This function is side-effect-free. It doesn't set the configured application ID, activate privileged reads, or persist or enumerate applications. Configure the application's federated identity credential with the returned subject, then update **privilegedReadSetting.appId** separately to activate it.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyconfiguration_getfederatedidentitycredentialsubject_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyconfiguration-getfederatedidentitycredentialsubject-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/configuration/getFederatedIdentityCredentialSubject(appId='{appId}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Function parameters

|Parameter|Type|Description|
|:---|:---|:---|
|appId|String|Required. The candidate application's client ID for which to compute a federated identity credential subject.|

## Response

If successful, this function returns `200 OK` and the computed String value in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyconfiguration_getfederatedidentitycredentialsubject"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/configuration/getFederatedIdentityCredentialSubject(appId='47f68495-2543-41f3-85cd-bfa4da6c615a')
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "string"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": "/eid1/c/pub/t/vbFgEjU6tkaqrkUXHnoJ6w/a/AwAAAAAAAADAAAAAAAAAAA/47f68495-2543-41f3-85cd-bfa4da6c615a"
}
```
