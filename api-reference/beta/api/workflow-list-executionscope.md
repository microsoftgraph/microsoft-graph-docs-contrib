---
title: "List executionScope"
description: "Get a list of the user objects in scope of execution for a workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List executionScope

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lists the users who are in the scope of the execution conditions of a [workflow](../resources/identitygovernance-workflow.md). Users who initially fall in the scope of the execution conditions, but are updated to no longer meet the conditions after it's scheduled to run, will remain on the list for a short period of time before being removed. If the execution scope is changed, users who initially met it's conditions, but no longer do so will be cleared from the list after a short period of time. New users who meet the conditions for the workflow will then be listed.

This API call requires workflow scheduling to be enabled.

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
