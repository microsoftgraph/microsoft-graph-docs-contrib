---
title: "List lifecyclePolicyPriorityConfigurations"
description: "Get a list of the lifecyclePolicyPriorityConfiguration objects and their properties."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List lifecyclePolicyPriorityConfigurations

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) objects and their properties in the [lifecycle workflows container](../resources/identitygovernance-lifecycleworkflowscontainer.md). Each configuration defines the policy evaluation order for one subject type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_list_lifecyclepolicypriorityconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-list-lifecyclepolicypriorityconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations
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

If successful, this method returns a `200 OK` response code and a collection of [lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_lifecyclepolicypriorityconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
      "id": "agentIdentity",
      "subjectType": "agentIdentity",
      "orderedPolicyIds": [
        "ba9191ab-e88f-4278-942c-4dcc6a4f05b1",
        "f360e310-e2c9-4bb3-a3ca-791d3c0b6548"
      ]
    }
  ]
}
```
