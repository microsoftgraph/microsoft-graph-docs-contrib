---
title: "Update cloudPcPool"
description: "Update the properties of a cloudPcPool object."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# Update cloudPcPool

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [cloudPcPool](../resources/cloudpcpool.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpool_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcpool-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /deviceManagement/virtualEndpoint/cloudPcPools/{cloudPcPool-id}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the properties of the [cloudPcPool](../resources/cloudpcpool.md) object to update.

The following table lists the properties that can be updated for a [cloudPcPool](../resources/cloudpcpool.md).

|Property|Type|Description|
|:---|:---|:---|
|billingConfiguration|[cloudPcAgentPoolBillingConfiguration](../resources/cloudpcagentpoolbillingconfiguration.md)|The billing configuration for the agent pool, including billing type and billing plan identifier.|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|The capabilities configuration for the pool, including single sign-on settings.|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|The Cloud PC specification, including image and operating system locale settings for provisioning.|
|description|String|The description of the pool. The maximum length is 512 characters.|
|displayName|String|The display name of the pool. The name is unique across Cloud PC pools in an organization. The maximum length is 60 characters.|
|scalingPolicy|[cloudPcAgentPoolScalingPolicy](../resources/cloudpcagentpoolscalingpolicy.md)|The scaling policy defining minimum and maximum Cloud PC counts for the pool.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_cloudpcpool"
}
-->

```http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890
Content-Type: application/json

{
  "displayName": "Contoso Development Pool Updated",
  "description": "Contoso Development Pool Description Updated"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
