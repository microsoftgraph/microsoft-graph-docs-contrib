---
title: "Add includeApplication (to a user flow)"
description: "Add application to an authenticationeEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Add includeApplication (to a user flow)
Namespace: microsoft.graph

Add or link an application to a user flow, or [authenticationEventsFlow](../resources/authenticationeventsflow.md).  This enables the authentication experience defined by the user flow to be enabled for the application. An application can only be linked to one user flow.


[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationconditionsapplications_post_includeapplications" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationconditionsapplications-post-includeapplications-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the **appId** of the application to associate with the user flow.

## Response

If successful, this method returns a `201 Created` response code and a new [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object in the response body. If unsuccessful, a `4xx` error is returned with specific details.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "post_includeapplications"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.authenticationConditionApplication",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}

```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.authenticationConditionApplication",
  "truncated": true,
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('0313cc37-d421-421d-857b-87804d61e33e')/conditions/applications/includeApplications/$entity",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}
```
