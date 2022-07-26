@ -1,10 +1,10 @@
---
title: "List appRoleAssignments granted to a user"
description: "Retrieve the list of app role assignments granted to a user."
title: "List appRoleAssignedResources granted to a user"
description: "Retrieve the list of service principals that a user has an appRoleAssignment for."
ms.localizationpriority: high
doc_type: apiPageType
ms.prod: "users"
author: "psignoret"
author: "eringreenlee"
---

# List service principals that a user has an appRoleAssignment for
@ -33,7 +33,7 @@ GET /users/{id | userPrincipalName}/appRoleAssignedResources

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.
This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page sizes are 100 and 999 service principal objects respectively. These queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and include `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

## Request headers

@ -101,10 +101,11 @@ The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment",
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

@ -115,21 +116,16 @@ Content-type: application/json
{
  "value": [
    {
      "id": "41W1zT6z1U-kJxf62svfp1HFE8pMZhxDun-ThPczmJE",
      "deletedDateTime": null,
      "appRoleId": "00000000-0000-0000-0000-000000000000",
      "createdDateTime": "2021-02-02T04:22:45.9480566Z",
      "principalDisplayName": "Alex Wilber",
      "principalId": "cdb555e3-b33e-4fd5-a427-17fadacbdfa7",
      "principalType": "User",
      "resourceDisplayName": "dxprovisioning-graphapi-client",
      "resourceId": "8e881353-1735-45af-af21-ee1344582a4d"
      "accountEnabled":true,
      "displayName":"Microsoft Teams",
      "servicePrincipalType":"Application",
      "signInAudience":"AzureADMyOrg"
    }
  ]
}
```

### Example 2: List appRoleAssignments granted to a user, filtered by resourceId
### Example 2: List service principals a user is assigned to, filtered by resourceId

#### Request

@ -181,37 +177,32 @@ The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment",
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appRoleAssignments",
  "value": [
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#servicePrincipals",
  "@odata.count":1396,
  "value":[
    {
      "id": "41W1zT6z1U-kJxf62svfp1HFE8pMZhxDun-ThPczmJE",
      "createdDateTime": "2021-02-02T04:22:45.9480566Z",
      "appRoleId": "00000000-0000-0000-0000-000000000000",
      "principalDisplayName": "MOD Administrator",
      "principalId": "cdb555e3-b33e-4fd5-a427-17fadacbdfa7",
      "principalType": "User",
      "resourceDisplayName": "dxprovisioning-graphapi-client",
      "resourceId": "8e881353-1735-45af-af21-ee1344582a4d"
      "accountEnabled":true,
      "displayName":"myContosoTeam",
      "servicePrincipalType":"Application",
      "signInAudience":"AzureADMyOrg"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List appRoleAssignments",
  "description": "List servicePrincipals",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
