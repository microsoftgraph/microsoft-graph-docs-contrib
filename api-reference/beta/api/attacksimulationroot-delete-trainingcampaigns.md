---
title: "Delete trainingCampaign"
description: "Delete a trainingCampaign object."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
ms.topic: reference
---

# Delete trainingCampaign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [trainingCampaign](../resources/trainingcampaign.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "attacksimulationroot-delete-trainingcampaigns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-delete-trainingcampaigns-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/attackSimulation/trainingCampaigns/{trainingCampaignId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_trainingcampaign"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/{trainingCampaignId}
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

