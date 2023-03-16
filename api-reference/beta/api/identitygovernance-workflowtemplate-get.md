---
title: "Get workflowTemplate"
description: "Read the properties and relationships of a workflowTemplate object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get workflowTemplate

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global Reader
- Lifecycle Workflows Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflowTemplates/{workflowTemplateId}
```

## Optional query parameters

This method does not support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflowtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflowTemplates/77179007-8114-41b5-922e-2e22109df41f
```

### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflowTemplates/$entity",
    "category": "joiner",
    "description": "Configure pre-hire tasks for onboarding employees before their first day",
    "displayName": "Onboard pre-hire employee",
    "id": "77179007-8114-41b5-922e-2e22109df41f",
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "department eq 'Marketing'"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": -7
        }
    },
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflowTemplates('77179007-8114-41b5-922e-2e22109df41f')/tasks",
    "tasks": [
        {
            "category": "joiner",
            "continueOnError": false,
            "description": "Generate Temporary Access Pass and send via email to user's manager",
            "displayName": "Generate TAP And Send Email",
            "executionSequence": 1,
            "id": "3e062c24-d219-483d-9258-288f2a039b94",
            "isEnabled": true,
            "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
            "arguments": [
                {
                    "name": "tapLifetimeMinutes",
                    "value": "480"
                },
                {
                    "name": "tapIsUsableOnce",
                    "value": "true"
                }
            ]
        }
    ]
}
```
