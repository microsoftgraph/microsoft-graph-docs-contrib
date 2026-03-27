---
title: "Create cloudPcPool"
description: "Create a new cloudPcPool object."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# Create cloudPcPool

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcPool](../resources/cloudpcpool.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_cloudpcpools" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-cloudpcpools-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/cloudPcPools
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [cloudPcPool](../resources/cloudpcpool.md) object.

The following table lists the properties that are required when you create a [cloudPcPool](../resources/cloudpcpool.md).

|Property|Type|Description|
|:---|:---|:---|
|billingConfiguration|[cloudPcAgentPoolBillingConfiguration](../resources/cloudpcagentpoolbillingconfiguration.md)|Required. The billing configuration for the agent pool, including billing type and billing plan identifier.|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|Required. The capabilities configuration including SSO settings.|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|Required. The Cloud PC specification including image and OS locale settings for provisioning.|
|description|String|Optional. The description of the pool. Maximum length is 512.|
|displayName|String|Required. The display name of the pool. The name is unique across Cloud PC pools in an organization. Maximum length is 60.|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|Required. The network configuration for the pool.|
|scalingPolicy|[cloudPcAgentPoolScalingPolicy](../resources/cloudpcagentpoolscalingpolicy.md)|Required. The scaling policy defining minimum and maximum Cloud PC counts for the pool.|

## Response

If successful, this method returns a `201 Created`response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcpool"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.cloudPcAgentPool",
  "displayName": "Contoso Development Pool",
  "cloudPcConfiguration": {
    "imageId": "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365",
    "imageType": "gallery",
    "osLocale": "en-US"
  },
  "networkConfiguration": {
    "@odata.type": "#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration",
    "geographicLocationType": "usWest",
    "regionGroups": [
      {
        "regionGroup": "usWest",
        "regions": ["westus2", "westus3"]
      }
    ]
  },
  "billingConfiguration": {
    "billingType": "payAsYouGo",
    "billingPlanId": "00000000-0000-0000-0000-000000000001"
  },
  "scalingPolicy": {
    "minimumCount": 2,
    "maximumCount": 10
  },
  "capabilities": {
    "@odata.type": "#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration",
    "enableSingleSignOn": true
  }
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
HTTP/1.1 201 Created
Content-Type: application/json
```
