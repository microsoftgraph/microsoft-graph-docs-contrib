---
title: "List includeApplications (for a user flow)"
description: "List applications for an authenticationEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List includeApplications (for a user flow)
Namespace: microsoft.graph

List the applications linked to an [authenticationEventsFlow](../resources/authenticationeventsflow.md).  These are the applications for which the authentication experience defined by the user flow is enabled.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationconditionsapplications_list_includeapplications" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationconditionsapplications-list-includeapplications-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-read](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications/
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` and a collection of [authenticationConditionApplication](../resources/authenticationconditionapplication.md) objects in the response body. 

## Examples

### Request
The following example shows a request to retrieve the list of applications associated with a user flow.
<!-- {
  "blockType": "request",
  "name": "get_includeApplications"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications/
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationConditionApplication"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('0313cc37-d421-421d-857b-87804d61e33e')/conditions/applications/includeApplications",
    "value": [
        {
            "appId": "63856651-13d9-4784-9abf-20758d509e19"
        }
    ]
}
```
