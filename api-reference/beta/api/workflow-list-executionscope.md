---
title: "List executionScope of a workflow (in Lifecycle Workflows)"
description: "Get a list of the user objects in scope of execution for a workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List executionScope of a workflow (in Lifecycle Workflows)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the users that currently meet the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md) regardless of whether they have already been processed by the [workflow](../resources/identitygovernance-workflow.md).

The users are not determined in real time in the course of the API call, but periodically in the backend, there will be delays until the result is accurate if the execution conditions have been changed recently, relevant attributes on the user have been changed recently or the [time based trigger](../resources/identitygovernance-timebasedattributetrigger.md) has been reached recently.

Since the [time based trigger](../resources/identitygovernance-timebasedattributetrigger.md) is a time window that looks back three days, the result of this API call will also return users whose execution day is slightly in the past.

No results are retruned for workflows if the schedule is disabled.

No results are retruned for workflows with [on-demand execution conditions](../resources/identitygovernance-ondemandexecutiononly.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

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
GET /identitygovernance/lifecycleWorkflows/workflows/{workflowId}/executionScope
```

## Optional query parameters

This method supports the `$select`, `$expand`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.user](../resources/user.md) objects in the response body.

## Examples

### Example 1: Retrieve the users that fall in scope of a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_executionScope"
}
-->
``` http
GET https://graph.microsoft.com/beta/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/executionScope
```

#### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.user)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users",
    "value": [
        {
            "displayName": "Christian Andersen",
            "givenName": "Christian",
            "mail": null,
            "surname": "Andersen",
            "userPrincipalName": "CAndersen@w325q.onmicrosoft.com"    
       }  
    ],      
}
```

### Example 2: Retrieve the id of users in the execution scope of a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_executionScope"
}
-->
``` http
GET https://graph.microsoft.com/beta/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/executionScope?$select=id
```

#### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.user)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id)",
    "value": [
     {   
        "id": "6bb70a30-124a-4666-b9b8-6ae178d4f791" 
        }
    ],
}
```
