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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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

The **@odata.type** property is required in the request body to specify the derived type. The supported value is `#microsoft.graph.cloudPcAgentPool`.

The following table lists the properties that are required when you create a [cloudPcPool](../resources/cloudpcpool.md).

|Property|Type|Description|
|:---|:---|:---|
|billingConfiguration|[cloudPcAgentPoolBillingConfiguration](../resources/cloudpcagentpoolbillingconfiguration.md)|Required. The billing configuration for the agent pool, including billing type and billing plan identifier. Applies to the [cloudPcAgentPool](../resources/cloudpcagentpool.md) derived type.|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|Required. The capabilities configuration for the pool, including single sign-on settings.|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|Required. The Cloud PC specification, including image and operating system locale settings for provisioning.|
|description|String|Optional. The description of the pool. The maximum length is 512 characters.|
|displayName|String|Required. The display name of the pool. The name is unique across Cloud PC pools in an organization. The maximum length is 60 characters.|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|Required. The network configuration for the pool. Supported derived types: [cloudPcMicrosoftHostedNetworkConfiguration](../resources/cloudpcmicrosofthostednetworkconfiguration.md).|
|scalingPolicy|[cloudPcAgentPoolScalingPolicy](../resources/cloudpcagentpoolscalingpolicy.md)|Required. The scaling policy defining minimum and maximum Cloud PC counts for the pool. Applies to the [cloudPcAgentPool](../resources/cloudpcagentpool.md) derived type.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcPool](../resources/cloudpcpool.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcpool-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcpool-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcpool-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcpool-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcpool-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcpool-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcPool"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "00000000-0000-0000-0000-000000000000",
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
        "regions": [
          "westus2",
          "westus3"
        ]
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
