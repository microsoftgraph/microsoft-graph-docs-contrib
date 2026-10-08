---
title: "Update lifecyclePolicyPriorityConfiguration"
description: "Update the properties of a lifecyclePolicyPriorityConfiguration object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update lifecyclePolicyPriorityConfiguration

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) object to reorder the evaluation priority of lifecycle policies for a subject type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicypriorityconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicypriorityconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations/{subjectType}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|The ETag of the lifecycle policy priority configuration. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|orderedPolicyIds|String collection|The ordered list of lifecycle policy IDs, from highest to lowest priority, for the subject type. Only the highest-priority matching policy binds to an identity.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_lifecyclepolicypriorityconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicyPriorityConfigurations/agentIdentity
Content-Type: application/json
If-Match: W/"JzEtVGFncCc="

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
  "orderedPolicyIds": [
    "f360e310-e2c9-4bb3-a3ca-791d3c0b6548",
    "ba9191ab-e88f-4278-942c-4dcc6a4f05b1"
  ]
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
