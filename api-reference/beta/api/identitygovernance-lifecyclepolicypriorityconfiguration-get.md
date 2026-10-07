---
title: "Get lifecyclePolicyPriorityConfiguration"
description: "Read the properties and relationships of a lifecyclePolicyPriorityConfiguration object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get lifecyclePolicyPriorityConfiguration

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) object. The configuration is keyed by subject type and returns the evaluation order of lifecycle policies for that subject type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicypriorityconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicypriorityconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations/{subjectType}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_lifecyclepolicypriorityconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations/agentIdentity
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
  "id": "agentIdentity",
  "subjectType": "agentIdentity",
  "orderedPolicyIds": [
    "ba9191ab-e88f-4278-942c-4dcc6a4f05b1",
    "f360e310-e2c9-4bb3-a3ca-791d3c0b6548"
  ]
}
```

