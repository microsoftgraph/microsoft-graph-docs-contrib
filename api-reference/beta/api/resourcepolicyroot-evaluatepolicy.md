---
title: "resourcePolicyRoot: evaluatePolicy"
description: "Evaluate an inline Rego policy for a supplied API request using resourcePolicyRoot."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# resourcePolicyRoot: evaluatePolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate an inline Rego policy for a supplied API request using [resourcePolicyRoot](../resources/resourcepolicyroot.md).

This action doesn't perform the simulated API request. The reported effect and whether the request would be blocked are returned separately. Policy loading or evaluation errors can appear in the **errorDetails** property of entries in the **details** collection even when **isResultDetailed** is false.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyroot_evaluatepolicy_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyroot-evaluatepolicy-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-evaluate.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /admin/resourcePolicy/evaluatePolicy
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
|policy|String|Required. The stringified Rego policy to evaluate.|
|resourceUri|String|Required. The URI of the request or resource to evaluate, such as `/beta/applications`.|
|httpMethod|[requestHttpMethod](../resources/enums.md#requesthttpmethod-values)|Required. The HTTP method of the simulated request. The possible values are: `post`, `patch`, `put`, `get`, `delete`, `unknownFutureValue`.|
|resourceBody|[Json](../resources/json.md)|Required. The JSON body of the simulated request. This nullable parameter can be set to null.|
|scope|String|Optional. The evaluation scope. The default is `/` (the tenant).|
|params|[Json](../resources/json.md)|Optional. The JSON parameter values validated against the inline policy's declared **paramsSchema**. If no parameter schema is declared, supplying values is rejected.|
|fetchResponses|[fetchResponse](../resources/fetchresponse.md) collection|Optional. Simulated fetch responses. Omit or send null for live fetch behavior. A supplied collection, including `[]`, enables strict simulation using exact **relativePathUri** matching.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|Optional. The enforcement mode to simulate. The default is `doNotEnforce`. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|isResultDetailed|Boolean|Optional. Whether to request detailed successful policy results. The default is `false`. Error-bearing details can be returned regardless of this value.|
|includeNormalizedRequestInput|Boolean|Optional. Whether to include the policy engine's input document in the response. The default is `false`.|

## Response

If successful, this action returns `200 OK` and a [policiesEvaluationResult](../resources/policiesevaluationresult.md) object in the response body.

## Examples

### Example 1: Evaluate a compliant request

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_evaluatepolicy"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/evaluatePolicy
Content-Type: application/json

{
  "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n",
  "resourceUri": "/beta/applications",
  "httpMethod": "post",
  "resourceBody": {
    "displayName": "Contoso application"
  },
  "enforcementMode": "doNotEnforce",
  "isResultDetailed": false
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
  "appliedPoliciesEffects": "compliant",
  "isBlocked": false,
  "message": "Resource is compliant with assigned policies.",
  "normalizedRequestInput": null,
  "details": []
}
```

### Example 2: Inspect a noncompliant result with enforcement disabled

The policy requires an application display name. The empty **displayName** in the simulated request causes the policy to report `deny`. The response includes the policy's reason, and **isBlocked** is `false` because **enforcementMode** is `doNotEnforce`.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_evaluatepolicy_noncompliant"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/evaluatePolicy
Content-Type: application/json

{
  "policy": "package graph.require_application_name[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application name\",\n  \"description\": \"Require applications to have a display name\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\n      \"create\",\n      \"updateOrUpsert\"\n    ]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"A display name is required.\"]} if {\n  object.get(input.resource, \"displayName\", \"\") == \"\"\n}\n",
  "resourceUri": "/beta/applications",
  "httpMethod": "post",
  "resourceBody": {
    "displayName": ""
  },
  "enforcementMode": "doNotEnforce",
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
  "isBlocked": false,
  "message": "Resource is non-compliant with policies: PolicyEvaluation.",
  "normalizedRequestInput": null,
  "details": [
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "PolicyEvaluation",
      "assignedPolicyDisplayName": "Require an application name",
      "appliedPolicyEffects": "deny",
      "enforcementMode": null,
      "reasons": [
        "A display name is required."
      ],
      "errorDetails": null
    }
  ]
}
```

### Example 3: Evaluate a policy with a simulated fetch response

The policy uses `fetchAsPolicy()` to read the target application's owners and requires at least one owner before an update. The **fetchResponses** collection supplies a simulated `200 OK` response with an empty owners collection, so the policy reports `deny`. Because **enforcementMode** is `enforce`, **isBlocked** is `true`.

Each simulated response specifies **relativePathUri**, **code**, and **data**. The **relativePathUri** must exactly match the URI used by the policy's fetch call, including the API version and query string. Supplying **fetchResponses** enables strict simulation: a fetch with no matching response produces an error instead of falling back to a live Microsoft Graph read.

The application update isn't performed, and the owners aren't read from Microsoft Graph.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_evaluatepolicy_fetchresponses"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/evaluatePolicy
Content-Type: application/json

{
  "policy": "package graph.require_application_owner[\"1.0.0\"]\n\n__metadata__ := {\n  \"title\": \"Require an application owner\",\n  \"description\": \"Require applications to have an owner before updates\",\n  \"category\": \"identityAndTenant\",\n  \"selector\": {\n    \"resourceName\": \"microsoft.graph.application\",\n    \"operations\": [\"updateOrUpsert\"]\n  }\n}\n\ndefault deny := {\"result\": false, \"reasons\": []}\n\ndeny := {\"result\": true, \"reasons\": [\"The application must have at least one owner.\"]} if {\n  not has_owner\n}\n\nhas_owner if {\n  owners := fetchAsPolicy({\n    \"relativePathUri\": sprintf(\n      \"/%s/applications/%s/owners?$select=id\",\n      [input.request.apiVersion, input.request.resourceKeys.id]\n    )\n  })\n  owners.code == 200\n  count(owners.data.value) > 0\n}\n",
  "resourceUri": "/beta/applications/8b1c4b61-8369-42e5-8f6c-624d27dfba20",
  "httpMethod": "patch",
  "resourceBody": {
    "displayName": "Contoso application"
  },
  "fetchResponses": [
    {
      "relativePathUri": "/beta/applications/8b1c4b61-8369-42e5-8f6c-624d27dfba20/owners?$select=id",
      "code": 200,
      "data": {
        "value": []
      }
    }
  ],
  "enforcementMode": "enforce",
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
  "resourceUri": "/beta/applications/8b1c4b61-8369-42e5-8f6c-624d27dfba20",
  "httpMethod": "patch",
  "appliedPoliciesEffects": "deny",
  "isBlocked": true,
  "message": "Resource is non-compliant with policies: PolicyEvaluation.",
  "normalizedRequestInput": null,
  "details": [
    {
      "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
      "assignmentUniqueName": "PolicyEvaluation",
      "assignedPolicyDisplayName": "Require an application owner",
      "appliedPolicyEffects": "deny",
      "enforcementMode": "enforce",
      "reasons": [
        "The application must have at least one owner."
      ],
      "errorDetails": null
    }
  ]
}
```
