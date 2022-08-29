---
title: "Get deletedItemContainer (a deleted lifecycle workflow)"
description: "Read the properties and relationships of a deleted lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get deletedItemContainer (a deleted lifecycle workflow)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a deleted [workflow](../resources/identitygovernance-workflow.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Global reader
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [workflow](../resources/identitygovernance-workflow.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_deleteditemcontainer"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/4557805a-1af5-4c29-b271-2cd7fb5de9bf
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/deletedItems/workflows/$entity",
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "Australia Onboard new hire employee",
    "lastModifiedDateTime": "2022-08-24T19:06:39.4291388Z",
    "createdDateTime": "2022-08-24T19:06:07.9926094Z",
    "deletedDateTime": "2022-08-24T19:06:39.6981917Z",
    "id": "4557805a-1af5-4c29-b271-2cd7fb5de9bf",
    "isEnabled": false,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(country eq 'Australia')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": 0
        }
    },
    "lastModifiedBy": {
        "id": "537b3620-fab7-435e-81bb-03fee751b789"
    },
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/deletedItems/workflows('4557805a-1af5-4c29-b271-2cd7fb5de9bf')/tasks",
    "tasks": [],
    "createdBy": {
        "id": "537b3620-fab7-435e-81bb-03fee751b789"
    }
}
```
