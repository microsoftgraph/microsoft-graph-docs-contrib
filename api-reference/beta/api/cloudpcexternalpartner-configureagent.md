---
title: "cloudPcExternalPartner: configureAgent"
description: "Configure the agent setting of the cloudPcExternalPartner."
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcExternalPartner: configureAgent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configure the [cloudPcExternalPartnerAgentSetting](../resources/cloudpcexternalpartneragentsetting.md) of the [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object. This setting is used for RMM partner agent installation. RMM partners must contact the Microsoft team to complete onboarding and add the agent URL prefix to the allow list before using this API. If `autoDeploymentEnabled` is enabled, the new provisioned Cloud PC is triggered agent deployment automatically. Currently supports only Windows 365 Business Cloud PC.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpcexternalpartner-configureagent-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcexternalpartner-configureagent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/externalPartners/{cloudPcExternalPartnerId}/configureAgent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|agentSetting|[cloudPcExternalPartnerAgentSetting](../resources/cloudpcexternalpartneragentsetting.md)|The agent settings associated with the external partner.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcexternalpartnerthis.configureagent"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5/configureAgent
Content-Type: application/json

{
  "agentSetting": {
      "agentUrl": "https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi",
      "agentSha256": "EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8",
      "installParameters": [
          "/quiet",
          "/norestart",
          "TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1"
      ],
      "autoDeploymentEnabled": true
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

