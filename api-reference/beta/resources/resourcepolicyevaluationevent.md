---
title: "resourcePolicyEvaluationEvent resource type"
description: "Represents an Entra Resource Policy evaluation audit event for a Microsoft Graph request."
author: "milanevk"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# resourcePolicyEvaluationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Entra Resource Policy (ERP) evaluation audit event for a Microsoft Graph request. Use these read-only events to investigate policy decisions and errors, inspect per-policy evaluation results, and correlate requests with directory audit logs.

Inherits from [entity](../resources/entity.md).

Events are retained for seven days with Microsoft Entra ID Free and 30 days with Microsoft Entra ID P1 or P2. The **policyDetails** property isn't returned by default; request it with `$select`.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List resourcePolicy](../api/auditlogroot-list-resourcepolicy.md)|[resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) collection|Get a list of the resourcePolicyEvaluationEvent objects and their properties.|
|[Get resourcePolicyEvaluationEvent](../api/resourcepolicyevaluationevent-get.md)|[resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md)|Get an Entra Resource Policy evaluation audit event.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|apiVersion|String|The Microsoft Graph API version of the request: `v1.0` or `beta`. Supports `$filter` (`eq`).|
|appDisplayName|String|The display name of the calling application, resolved when the event is read rather than stored in the raw event.|
|appId|String|The application (client) ID of the caller. Supports `$filter` (`eq`).|
|applicablePoliciesCount|Int32|The number of policies that applied to the request.|
|auditPoliciesCount|Int32|The number of policies that triggered an audit.|
|clientRequestId|String|The optional client-provided correlation ID from the `client-request-id` header, expressed as a GUID. Supports `$filter` (`eq`).|
|denyPoliciesCount|Int32|The number of policies that triggered a deny decision.|
|durationMs|Int32|The total request duration, in milliseconds.|
|errorPoliciesCount|Int32|The number of policies with evaluation, applicability, or loading errors.|
|evaluatedDateTime|DateTimeOffset|The date and time of policy evaluation, in UTC. Supports `$filter` (`eq`, `ge`, `le`) and `$orderby`. The default sort order is descending.|
|evaluatedPoliciesCount|Int32|The number of policies evaluated.|
|id|String|The unique identifier of the evaluation event. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|location|String|The Azure region or datacenter of the Microsoft Graph instance that served the request.|
|operationId|String|The parent operation ID for request correlation, expressed as a GUID. Shared across all child operations of a `$batch` request. Supports `$filter` (`eq`).|
|policyDecision|[resourcePolicyDecision](../resources/enums.md#resourcepolicydecision-values)|The net policy decision. The possible values are: `deny`, `none`, `compliant`, `unknownFutureValue`. The value `none` indicates errors or non-blocking noncompliance. Use **isCompliant** and **isEnforced** in **policyDetails** to inspect individual policy evaluation results. Supports `$filter` (`eq`).|
|policyDetails|[policyEvaluationDetail](../resources/policyevaluationdetail.md) collection|The per-policy evaluation results. Not returned by default; request with `$select=policyDetails` or include **policyDetails** with other selected properties.|
|requestId|String|The server-generated Microsoft Graph request ID, expressed as a GUID, for correlation with directory audit logs and support logs. Supports `$filter` (`eq`).|
|requestMethod|String|The HTTP method of the request, such as `GET`, `POST`, `PATCH`, or `DELETE`. Supports `$filter` (`eq`).|
|requestUri|String|The Microsoft Graph request URI with personal data redacted. User identifiers, email addresses, and query parameter values are replaced with `{redacted}`.|
|servicePrincipalId|String|The service principal object ID for an app-only request. Supports `$filter` (`eq`).|
|targetResourceId|String|The target resource identifier from the request URI key segment, expressed as a GUID or `key=value` for an alternate key. Not set when **targetResourceName** identifies an OData action. Supports `$filter` (`eq`).|
|targetResourceName|String|The resource type short name for a CRUD operation, such as `user` or `application`, or the binding type and action name for a bound action, such as `application/addKey`. Supports `$filter` (`eq`).|
|tenantId|String|The Microsoft Entra tenant ID of the organization that owns the resource, expressed as a GUID.|
|totalFetchDurationMs|Int32|The time spent on side-channel Microsoft Graph reads during evaluation, in milliseconds. This metric isn't currently populated.|
|totalPolicyEvaluationDurationMs|Int32|The end-to-end policy evaluation time, including side-channel reads, in milliseconds.|
|userId|String|The user object ID for a delegated request. Supports `$filter` (`eq`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyEvaluationEvent",
  "id": "String (identifier)",
  "evaluatedDateTime": "String (timestamp)",
  "location": "String",
  "requestId": "String",
  "operationId": "String",
  "clientRequestId": "String",
  "requestMethod": "String",
  "apiVersion": "String",
  "requestUri": "String",
  "tenantId": "String",
  "appId": "String",
  "appDisplayName": "String",
  "servicePrincipalId": "String",
  "userId": "String",
  "targetResourceName": "String",
  "targetResourceId": "String",
  "policyDecision": "String",
  "evaluatedPoliciesCount": "Integer",
  "applicablePoliciesCount": "Integer",
  "denyPoliciesCount": "Integer",
  "auditPoliciesCount": "Integer",
  "errorPoliciesCount": "Integer",
  "totalPolicyEvaluationDurationMs": "Integer",
  "durationMs": "Integer",
  "totalFetchDurationMs": "Integer",
  "policyDetails": [
    {
      "@odata.type": "microsoft.graph.policyEvaluationDetail",
      "assignmentUniqueName": "String",
      "assignedPolicyDisplayName": "String",
      "appliedPolicyEffects": "String",
      "isEnforced": "Boolean",
      "isCompliant": "Boolean",
      "isApplicable": "Boolean",
      "policyMessage": "String",
      "evaluationError": "String",
      "applicabilityEvaluationError": "String",
      "policyLoadingError": "String",
      "policyVersion": "String",
      "fetchDetails": [
        {
          "@odata.type": "microsoft.graph.fetchDetail",
          "path": "String",
          "durationMs": "Integer"
        }
      ]
    }
  ]
}
```
