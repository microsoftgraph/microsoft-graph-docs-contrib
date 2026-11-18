---
title: "resourcePolicyRoot: evaluateAssignedPolicies"
description: "Evaluate the applicable assigned policies for a supplied API request using resourcePolicyRoot."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# resourcePolicyRoot: evaluateAssignedPolicies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate the applicable assigned policies for a supplied API request using [resourcePolicyRoot](../resources/resourcepolicyroot.md).

This action doesn't perform the simulated API request. The reported effect and whether the request would be blocked are returned separately. Policy loading or evaluation errors can appear in the **errorDetails** property of entries in the **details** collection even when **isResultDetailed** is false.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyroot_evaluateassignedpolicies_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyroot-evaluateassignedpolicies-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-evaluate.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /admin/resourcePolicy/evaluateAssignedPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|resourceUri|String|Required. The URI of the request or resource to evaluate, such as `/beta/applications`.|
|httpMethod|[requestHttpMethod](../resources/enums.md#requesthttpmethod-values)|Required. The HTTP method of the simulated request. The possible values are: `post`, `patch`, `put`, `get`, `delete`, `unknownFutureValue`.|
|resourceBody|[Json](../resources/json.md)|Required. The JSON body of the simulated request. This nullable parameter can be set to null.|
|scope|String|Optional. The evaluation scope. The default is `/` (the tenant).|
|isResultDetailed|Boolean|Optional. Whether to request detailed successful policy results. The default is `false`. Error-bearing details can be returned regardless of this value.|
|includeNormalizedRequestInput|Boolean|Optional. Whether to include the policy engine's input document in the response. The default is `false`.|

## Response

If successful, this action returns `200 OK` and a [policiesEvaluationResult](../resources/policiesevaluationresult.md) object in the response body.

## Examples

These examples assume that the tenant has the following enabled assignments at scope `/`. Both policies apply to application creation and update operations.

| Assignment unique name        | Definition unique name              | Policy requirement                                      | Enforcement mode |
|:------------------------------|:------------------------------------|:--------------------------------------------------------|:-----------------|
| `tenant_application_baseline` | `require_application_name`          | The application has a nonempty **displayName**.         | `doNotEnforce`   |
| `tenant_application_audience` | `require_single_tenant_application` | The application's **signInAudience** is `AzureADMyOrg`. | `enforce`        |

### Example 1: Evaluate multiple assigned policies

The simulated request supplies a display name and a multitenant sign-in audience. The name policy reports `compliant`, and the audience policy reports `deny`. Because the audience policy is enforced, the aggregate result has **appliedPoliciesEffects** set to `deny` and **isBlocked** set to `true`.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_evaluateassignedpolicies"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/evaluateAssignedPolicies
Content-Type: application/json

{
  "resourceUri": "/beta/applications",
  "httpMethod": "post",
  "resourceBody": {
    "displayName": "Contoso application",
    "signInAudience": "AzureADMultipleOrgs"
  },
  "scope": "/",
  "isResultDetailed": true
}
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.policiesEvaluationResult"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.policiesEvaluationResult",
  "resourceUri": "/beta/applications",
  "httpMethod": "post",
  "appliedPoliciesEffects": "deny",
  "isBlocked": true,
  "message": "Resource is non-compliant with policies: require_single_tenant_application.",
  "normalizedRequestInput": null,
  "details": [
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "tenant_application_baseline",
      "assignedPolicyDisplayName": "Require an application name",
      "appliedPolicyEffects": "compliant",
      "enforcementMode": "doNotEnforce",
      "reasons": null,
      "errorDetails": null
    },
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "tenant_application_audience",
      "assignedPolicyDisplayName": "Require a single-tenant application",
      "appliedPolicyEffects": "deny",
      "enforcementMode": "enforce",
      "reasons": [
        "Applications must use the AzureADMyOrg sign-in audience."
      ],
      "errorDetails": null
    }
  ]
}
```

### Example 2: Inspect the normalized request input

Set **includeNormalizedRequestInput** to `true` to inspect the input supplied to the policy engine. This example evaluates an application update that satisfies both assigned policies. The normalized input contains the API version, the caller's authentication context, the URI segments and resource keys, and the supplied resource body. The authentication context values reflect the caller of the evaluation API.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_evaluateassignedpolicies_normalized"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/evaluateAssignedPolicies
Content-Type: application/json

{
  "resourceUri": "/beta/applications/8b1c4b61-8369-42e5-8f6c-624d27dfba20",
  "httpMethod": "patch",
  "resourceBody": {
    "displayName": "Contoso application",
    "signInAudience": "AzureADMyOrg"
  },
  "scope": "/",
  "isResultDetailed": true,
  "includeNormalizedRequestInput": true
}
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.policiesEvaluationResult"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.policiesEvaluationResult",
  "resourceUri": "/beta/applications/8b1c4b61-8369-42e5-8f6c-624d27dfba20",
  "httpMethod": "patch",
  "appliedPoliciesEffects": "compliant",
  "isBlocked": false,
  "message": "Resource is compliant with assigned policies.",
  "normalizedRequestInput": {
    "request": {
      "apiVersion": "beta",
      "authContext": {
        "isAppOnly": true,
        "appid": "bdf7919e-a1bd-46d6-b99d-446cc0116353",
        "tid": "f41b6369-cba8-48c9-bf58-1e066b0a46f0",
        "oid": "0d52b272-6161-49d5-a0e8-31082a0e7d19"
      },
      "uriSegments": [
        {
          "name": "applications",
          "type": "microsoft.graph.application",
          "keys": {
            "id": "8b1c4b61-8369-42e5-8f6c-624d27dfba20"
          }
        }
      ],
      "resourceKeys": {
        "id": "8b1c4b61-8369-42e5-8f6c-624d27dfba20"
      }
    },
    "resource": {
      "displayName": "Contoso application",
      "signInAudience": "AzureADMyOrg"
    }
  },
  "details": [
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "tenant_application_baseline",
      "assignedPolicyDisplayName": "Require an application name",
      "appliedPolicyEffects": "compliant",
      "enforcementMode": "doNotEnforce",
      "reasons": null,
      "errorDetails": null
    },
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "tenant_application_audience",
      "assignedPolicyDisplayName": "Require a single-tenant application",
      "appliedPolicyEffects": "compliant",
      "enforcementMode": "enforce",
      "reasons": null,
      "errorDetails": null
    }
  ]
}
```
